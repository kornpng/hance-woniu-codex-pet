$ErrorActionPreference = "Stop"

$PetId = "hance-woniu--korn"
$ExpectedSpritesheetSha256 = "8ba2e9a2964c88f93b533e35fc69148da6d314e74711c86fd4231e09a4305255"
$RawBase = if ($env:HANCE_WONIU_RAW_BASE) {
  $env:HANCE_WONIU_RAW_BASE
} else {
  "https://raw.githubusercontent.com/kornpng/hance-woniu-codex-pet/main"
}

$CodexHome = if ($env:CODEX_HOME) {
  $env:CODEX_HOME
} else {
  Join-Path $env:USERPROFILE ".codex"
}

$TargetDir = Join-Path (Join-Path $CodexHome "pets") $PetId
$TempDir = Join-Path ([System.IO.Path]::GetTempPath()) ("hance-woniu-" + [guid]::NewGuid().ToString("N"))

try {
  New-Item -ItemType Directory -Force -Path $TempDir | Out-Null

  $PetJson = Join-Path $TempDir "pet.json"
  $Spritesheet = Join-Path $TempDir "spritesheet.webp"

  Invoke-WebRequest -UseBasicParsing -Uri "$RawBase/pet/pet.json" -OutFile $PetJson
  Invoke-WebRequest -UseBasicParsing -Uri "$RawBase/pet/spritesheet.webp" -OutFile $Spritesheet

  $Manifest = Get-Content -Raw -Path $PetJson | ConvertFrom-Json
  if (
    $Manifest.id -ne $PetId -or
    $Manifest.spriteVersionNumber -ne 2 -or
    $Manifest.spritesheetPath -ne "spritesheet.webp"
  ) {
    throw "pet.json 校验失败。"
  }

  if ((Get-Item $Spritesheet).Length -le 0) {
    throw "spritesheet.webp 下载不完整。"
  }

  $ActualSpritesheetSha256 = (Get-FileHash -Algorithm SHA256 -Path $Spritesheet).Hash.ToLowerInvariant()
  if ($ActualSpritesheetSha256 -ne $ExpectedSpritesheetSha256) {
    throw "spritesheet.webp 的 SHA-256 不匹配，已停止安装。"
  }

  New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
  Copy-Item -Force $PetJson (Join-Path $TargetDir "pet.json")
  Copy-Item -Force $Spritesheet (Join-Path $TargetDir "spritesheet.webp")

  Write-Host "已安装旱厕蜗牛：$TargetDir"
  Write-Host "请重启 Codex，然后在“设置 → 宠物”中选择它。"
} finally {
  if (Test-Path $TempDir) {
    Remove-Item -Recurse -Force $TempDir
  }
}
