# folderffmpeg

THIS IS A TEST TO TEST SEE WHAT AI CAN DO NOTHING MORE NOTHING LESS IT HASNT BEEN TESTED AND SHOULD NOT BE USED

![Linux tested](https://img.shields.io/badge/tested-linux-brightgreen)
![Android tested](https://img.shields.io/badge/tested-android-brightgreen)

**folderffmpeg** is a lightweight native wrapper around FFmpeg that batch-converts entire folders of videos.

Designed for:
- 🖥 Linux desktops
- 📱 Android (Termux)

---

## 🚀 One-Line Install

### Linux (Debian/Ubuntu)

```bash
curl -sL https://raw.githubusercontent.com/Waterappl/folderffmpeg/main/install.sh | bash
```

### Android (Termux)

Install Termux (recommended from F-Droid), then:

```bash
curl -sL https://raw.githubusercontent.com/Waterappl/folderffmpeg/main/install.sh | bash
```

---

## 🧰 Usage

Interactive:

```bash
folderffmpeg
```

CLI:

```bash
folderffmpeg --input /path/to/videos --output /path/to/out --preset h265
```

Presets:
- h264
- h265
- battery
- vp9

---

## 📂 Supported Formats

| Input | Output | Video Codec | Audio |
|-------|--------|------------|--------|
| mp4 | mp4 | H.264 | AAC |
| mkv | mp4 | H.265 | AAC |
| avi | mp4 | H.264 | AAC |
| mov | mp4 | H.264 | AAC |
| webm | webm/mp4 | VP9 | Opus/AAC |

---

## 📱 Android Tips

After install:

```bash
termux-setup-storage
```

Run normally:

```bash
folderffmpeg
```

Optional shortcut:

```bash
termux-open folderffmpeg
```

---

## 🧾 License

MIT License (Free and Open Source)
