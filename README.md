# 旱厕蜗牛 · Codex Pet

![Codex Pet v2](https://img.shields.io/badge/Codex%20Pet-v2-111111)
![作者](https://img.shields.io/badge/%E4%BD%9C%E8%80%85-korn-2ea44f)
![宠物素材许可](https://img.shields.io/badge/%E5%AE%A0%E7%89%A9%E7%B4%A0%E6%9D%90-CC%20BY--NC%204.0-f97316)

“旱厕蜗牛”是由 **korn** 设计并制作成 Codex v2 动画宠物的白色圆头角色：粗黑手绘轮廓、不对称眼睛、憨笑，以及嘴角附着的一小条蓝色口水。

这个仓库同时提供三样东西：

1. 可以直接安装的完整宠物包；
2. macOS、Linux 与 Windows 一键安装入口；
3. 一份从个人 IP 设定图到 Codex 宠物、再到 GitHub 分发的中文教程。

<p align="center">
  <img src="assets/gifs/idle.gif" alt="旱厕蜗牛待机" width="150">
  <img src="assets/gifs/waving.gif" alt="旱厕蜗牛挥手" width="150">
  <img src="assets/gifs/running.gif" alt="旱厕蜗牛工作中" width="150">
  <img src="assets/gifs/review.gif" alt="旱厕蜗牛审阅" width="150">
</p>

## 一键安装

### 在 ChatGPT 中打开

[![在 ChatGPT 中安装](https://img.shields.io/badge/%E5%9C%A8%20ChatGPT%20%E4%B8%AD%E5%AE%89%E8%A3%85-111111?style=for-the-badge&logo=openai&logoColor=white)](codex://new?prompt=%E8%AF%B7%E5%85%A8%E7%A8%8B%E4%BD%BF%E7%94%A8%E4%B8%AD%E6%96%87%EF%BC%8C%E4%B8%BA%E6%88%91%E5%AE%89%E8%A3%85%20GitHub%20%E4%BB%93%E5%BA%93%20kornpng%2Fhance-woniu-codex-pet%20%E4%B8%AD%E7%9A%84%20Codex%20%E5%AE%A0%E7%89%A9%E3%80%8C%E6%97%B1%E5%8E%95%E8%9C%97%E7%89%9B%E3%80%8D%E3%80%82%E5%85%88%E5%88%A4%E6%96%AD%E5%BD%93%E5%89%8D%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F%EF%BC%8C%E5%86%8D%E8%BF%90%E8%A1%8C%E5%AF%B9%E5%BA%94%E5%91%BD%E4%BB%A4%E3%80%82%E5%AE%89%E8%A3%85%E5%90%8E%E7%A1%AE%E8%AE%A4%20pet.json%20%E4%B8%8E%20spritesheet.webp%20%E4%BD%8D%E4%BA%8E%20Codex%20pets%20%E7%9B%AE%E5%BD%95%EF%BC%8C%E6%8A%A5%E5%91%8A%E5%AE%9E%E9%99%85%E5%AE%89%E8%A3%85%E8%B7%AF%E5%BE%84%EF%BC%8C%E5%B9%B6%E8%AF%B4%E6%98%8E%E5%A6%82%E4%BD%95%E5%9C%A8%E2%80%9C%E8%AE%BE%E7%BD%AE%20%E2%86%92%20%E5%AE%A0%E7%89%A9%E2%80%9D%E4%B8%AD%E5%90%AF%E7%94%A8%E3%80%82%E4%B8%8D%E8%A6%81%E4%BF%AE%E6%94%B9%E5%85%B6%E4%BB%96%E5%AE%A0%E7%89%A9%E3%80%82%0A%0AmacOS%20%2F%20Linux%EF%BC%9A%0Acurl%20-fsSL%20https%3A%2F%2Fraw.githubusercontent.com%2Fkornpng%2Fhance-woniu-codex-pet%2Fmain%2Fscripts%2Finstall.sh%20%7C%20bash%0A%0AWindows%20PowerShell%EF%BC%9A%0Apowershell%20-NoProfile%20-ExecutionPolicy%20Bypass%20-Command%20%22irm%20https%3A%2F%2Fraw.githubusercontent.com%2Fkornpng%2Fhance-woniu-codex-pet%2Fmain%2Fscripts%2Finstall.ps1%20%7C%20iex%22)

如果 GitHub 没有把 `codex://` 按钮识别为可点击链接，请使用下面与你系统对应的命令。

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/kornpng/hance-woniu-codex-pet/main/scripts/install.sh | bash
```

### Windows PowerShell

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/kornpng/hance-woniu-codex-pet/main/scripts/install.ps1 | iex"
```

安装脚本只会更新 `hance-woniu--korn` 这个目录，不会修改其他宠物。默认安装位置：

- macOS / Linux：`~/.codex/pets/hance-woniu--korn/`
- Windows：`%USERPROFILE%\.codex\pets\hance-woniu--korn\`

安装完成后，重启 Codex，在“设置 → 宠物”中选择它；部分版本的入口显示为“设置 → 外观 → 宠物”。

## 完整动画

| 待机                      | 向右移动                           | 向左移动                          | 挥手                        |
| ------------------------- | ---------------------------------- | --------------------------------- | --------------------------- |
| ![](assets/gifs/idle.gif) | ![](assets/gifs/running-right.gif) | ![](assets/gifs/running-left.gif) | ![](assets/gifs/waving.gif) |

| 跳跃                         | 失败                        | 等待                         | 工作中                       | 审阅                        |
| ---------------------------- | --------------------------- | ---------------------------- | ---------------------------- | --------------------------- |
| ![](assets/gifs/jumping.gif) | ![](assets/gifs/failed.gif) | ![](assets/gifs/waiting.gif) | ![](assets/gifs/running.gif) | ![](assets/gifs/review.gif) |

| 000° → 157.5°                     | 180° → 337.5°                     |
| --------------------------------- | --------------------------------- |
| ![](assets/gifs/look-000-157.gif) | ![](assets/gifs/look-180-337.gif) |

<details>
<summary>查看 8×11 完整动作表</summary>

![旱厕蜗牛完整动作表](assets/contact-sheet.png)

</details>

## 这只形象是怎么设计出来的

最初的角色设定由 korn 根据网络梗“旱厕蜗牛”重新绘制成三视图。这个版本没有蜗牛壳或触角，而是用极简轮廓和表情建立辨识度：

- 白色圆头、圆身、短手短腿；
- 一只大圆眼与一只眯眼形成不对称；
- 大幅憨笑；
- 嘴角附着的蓝色口水是唯一高饱和色；
- 粗黑手绘线条在宠物显示尺寸下仍然清楚。

![旱厕蜗牛三视图](assets/design-reference.png)

本教程受到阿哲 Phil 的 X 文章[《快速上手设计一款个人 IP，并做成 Codex 宠物》](https://x.com/Formulasearch/status/2076554713336512758?s=20)启发。文章提出了一个很实用的两段式方法：先把参考图提炼成稳定、可重复绘制的个人 IP，再把确定好的形象交给 Hatch Pet 制作动画。本仓库在这个思路上补充了 v2 图集规格、逐动作验收、16 个环视方向、透明边缘检查和 GitHub 一键分发。

## 教程：从个人 IP 到 Codex 宠物

### 1. 先确认素材和授权

准备一张你有权改编和再分发的参考图。可以是自己的头像、原创卡通角色、品牌吉祥物、手绘草图或宠物照片。

请在开始前明确：

- 宠物名称；
- 作者署名；
- 原始来源链接；
- 允许别人下载、安装和再分发的许可证；
- 角色必须保留的 3—5 个识别特征。

“网上能看到”不等于“可以重新分发”。如果素材不属于你，应先取得明确授权。

### 2. 把角色压缩成小尺寸仍可识别的形象

Codex 宠物每格只有 `192×208`，所以它更接近动态图标，而不是海报。优先保留：

- 独特轮廓和身体比例；
- 主色与一两个强调色；
- 关键五官、发型、花纹或配饰；
- 一眼就能看懂的情绪和姿态。

不要把大量细线、文字、复杂背景和微小装饰塞进角色。最好先画正面、侧面、背面或至少一张稳定的全身设定图。

### 3. 在 Codex 中调用 Hatch Pet

在 Codex 的“设置 → 宠物 → 创建”中上传设定图，或者在普通任务里附上图片并明确要求使用 Hatch Pet。可以直接使用下面这段任务模板：

```text
请使用 Hatch Pet，把我上传的角色设定图制作成 Codex v2 宠物。

角色名称：<名称>
作者：<作者>
角色必须保持：<轮廓、配色、五官、标志性细节>

请分别设计并验收九组标准动作，不要把同一姿势机械复制到不同行；完成 16 个顺时针环视方向。最终输出 8×11、1536×2288 的透明 spritesheet.webp，并生成 spriteVersionNumber 为 2 的 pet.json。

在正常宠物尺寸和放大视图下检查深色、浅色、棋盘格背景，修复紫边、绿边、青边、洋红边、透明洞、尺寸跳变和基线抖动，但不要全局删除角色真实使用的颜色。完成后安装到 Codex pets 目录并报告实际路径。
```

### 4. 理解 v2 动作表

最终图集固定为 8 列 × 11 行：

| 行   | 状态            | 用途                |
| ---- | --------------- | ------------------- |
| 0    | `idle`          | 待机、呼吸和眨眼    |
| 1    | `running-right` | 向右移动            |
| 2    | `running-left`  | 向左移动            |
| 3    | `waving`        | 打招呼              |
| 4    | `jumping`       | 跳跃                |
| 5    | `failed`        | 失败或取消          |
| 6    | `waiting`       | 等待确认或输入      |
| 7    | `running`       | 正在工作或处理      |
| 8    | `review`        | 审阅结果            |
| 9—10 | `look`          | 16 个顺时针环视方向 |

图集规格：

- 单格：`192×208`
- 整图：`1536×2288`
- `pet.json.spriteVersionNumber`：`2`
- 方向顺序：`000`、`022.5`、`045`……直到 `337.5`

### 5. 不要跳过逐帧 QA

至少检查以下内容：

- 九组动作的语义是否真的不同；
- 左右移动方向与步态是否正确；
- 正常尺寸下是否忽大忽小、上下抖动；
- 16 个环视方向是否按顺时针连续变化；
- 深色、浅色和棋盘格背景是否出现色边；
- 角色内部是否有意外透明洞；
- 角色身份、比例、配色与标志性细节是否稳定。

### 6. 打包运行时文件

一个可安装的自定义宠物最关键的是两个文件：

```text
pet.json
spritesheet.webp
```

本仓库把它们放在 [`pet/`](pet/) 中。`pet.json` 的核心字段如下：

```json
{
  "id": "hance-woniu--korn",
  "displayName": "旱厕蜗牛",
  "description": "一个憨憨微笑、嘴角挂着蓝色口水的白色圆头网络梗宠物。",
  "spriteVersionNumber": 2,
  "spritesheetPath": "spritesheet.webp"
}
```

### 7. 用 GitHub 分发

将宠物文件与安装脚本放进公开 GitHub 仓库后，别人无需克隆整个项目，只要运行本页开头的一条命令即可。安装器的工作很简单：

1. 从 GitHub Raw 下载 `pet.json` 和 `spritesheet.webp`；
2. 检查宠物 id、版本和文件是否完整；
3. 写入 `~/.codex/pets/hance-woniu--korn/`；
4. 不触碰其他宠物目录。

你也可以把自己的宠物投稿到 [Awesome Codex Pet](https://github.com/legeling/awesome-codex-pet)，让它出现在公共画廊中。

## 仓库结构

```text
.
├── README.md
├── LICENSE
├── ASSET-LICENSE.md
├── assets/
│   ├── design-reference.png
│   ├── contact-sheet.png
│   └── gifs/
├── pet/
│   ├── pet.json
│   └── spritesheet.webp
└── scripts/
    ├── install.sh
    └── install.ps1
```

## 作者、来源与许可

- 设计与宠物作者：**korn**
- 网络梗来源参考：[抖音链接](https://www.iesdouyin.com/share/video/7659707531794664740)
- 教程思路参考：[阿哲 Phil 的 X 文章](https://x.com/Formulasearch/status/2076554713336512758?s=20)
- 宠物图集与 korn 原创三视图：CC BY-NC 4.0，详见 [ASSET-LICENSE.md](ASSET-LICENSE.md)
- 安装脚本与文档示例代码：MIT，详见 [LICENSE](LICENSE)

许可证只覆盖 korn 原创三视图与本次 Codex 宠物改编，不对第三方网络梗素材主张权利。
