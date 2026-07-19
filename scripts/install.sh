#!/usr/bin/env bash
set -euo pipefail

PET_ID="hance-woniu--korn"
EXPECTED_SPRITESHEET_SHA256="8ba2e9a2964c88f93b533e35fc69148da6d314e74711c86fd4231e09a4305255"
RAW_BASE="${HANCE_WONIU_RAW_BASE:-https://raw.githubusercontent.com/kornpng/hance-woniu-codex-pet/main}"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_HOME/pets/$PET_ID"

if ! command -v curl >/dev/null 2>&1; then
  echo "缺少 curl，无法下载安装文件。" >&2
  exit 1
fi

if ! command -v mktemp >/dev/null 2>&1; then
  echo "缺少 mktemp，无法创建安全的临时目录。" >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

curl -fsSL --retry 2 "$RAW_BASE/pet/pet.json" -o "$TMP_DIR/pet.json"
curl -fsSL --retry 2 "$RAW_BASE/pet/spritesheet.webp" -o "$TMP_DIR/spritesheet.webp"

if [ ! -s "$TMP_DIR/pet.json" ] || [ ! -s "$TMP_DIR/spritesheet.webp" ]; then
  echo "下载的宠物文件不完整。" >&2
  exit 1
fi

if command -v jq >/dev/null 2>&1; then
  jq -e \
    '.id == "hance-woniu--korn" and .spriteVersionNumber == 2 and .spritesheetPath == "spritesheet.webp"' \
    "$TMP_DIR/pet.json" >/dev/null
fi

if command -v shasum >/dev/null 2>&1; then
  ACTUAL_SHA256="$(shasum -a 256 "$TMP_DIR/spritesheet.webp" | awk '{print $1}')"
elif command -v sha256sum >/dev/null 2>&1; then
  ACTUAL_SHA256="$(sha256sum "$TMP_DIR/spritesheet.webp" | awk '{print $1}')"
else
  echo "缺少 SHA-256 校验工具。" >&2
  exit 1
fi

if [ "$ACTUAL_SHA256" != "$EXPECTED_SPRITESHEET_SHA256" ]; then
  echo "spritesheet.webp 的 SHA-256 不匹配，已停止安装。" >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"
cp "$TMP_DIR/pet.json" "$TARGET_DIR/.pet.json.tmp"
cp "$TMP_DIR/spritesheet.webp" "$TARGET_DIR/.spritesheet.webp.tmp"
mv "$TARGET_DIR/.pet.json.tmp" "$TARGET_DIR/pet.json"
mv "$TARGET_DIR/.spritesheet.webp.tmp" "$TARGET_DIR/spritesheet.webp"

echo "已安装旱厕蜗牛：$TARGET_DIR"
echo "请重启 Codex，然后在“设置 → 宠物”中选择它。"
