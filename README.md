# StreamLoop

Cross-platform scripts for recording and archiving live streams using Streamlink + FFmpeg.  
Supports Windows and Linux, HLS and MPD sources, custom output naming, and loop-based continuous recording.

> ✅ Maintained by the **community of the ForoMedios.com Discord**  
> 🌐 https://discord.foromedios.com

## Description

RecStreams is a collection of scripts that allow you to record and archive live streams easily on Windows and Linux.  
It features automated timestamp file generation, reconnect loops, and optional MPD KEY input for DRM-like cases.

### Features

- Cross-platform (Windows & Linux)
- Auto-timestamped file naming (perfect for archiving)
- Loop recording (auto-restart)
- Auto-create folders for each channel/stream
- Streamlink + FFmpeg support
- MPD KEY support on Windows
- CLI only — lightweight, no GUI

## Included scripts

| File | OS | Description |
|------|----|-------------|
| `windows.bat` | Windows | Standard HLS recording |
| `windows-mpd.bat` | Windows | Recording MPD streams w/ KEY input |
| `linux.sh` | Linux | Standard HLS recording |

---

## Requirements

- **Streamlink**
- **FFmpeg**
- A valid stream URL (M3U8 / MPD / etc.)
- Internet connection

### 🪟 Install on Windows

Scoop:
```powershell
scoop install streamlink
````

Chocolatey:

```powershell
choco install streamlink
```

### 🐧 Install on Linux

```bash
sudo apt install streamlink ffmpeg
```

---

## 🚀 Usage

### Windows (HLS / normal streams)

```bat
windows.bat
Enter URL: https://example-stream.m3u8
Enter Filename: MyChannel
```

### Windows (MPD + KEY)

```bat
windows-mpd.bat
Enter URL: https://example/manifest.mpd
Enter KEY: 8bfa1c35d74aeef43f2ae81234567890
Enter Filename: MyChannel
```

> ⚠️ For MPD KEY: Only enter the KEY value (not full `KID:KEY`).

### Linux

```bash
chmod +x linux.sh
./linux.sh
Enter URL: https://example-stream.m3u8
Enter Filename: MyChannel
```

---

## 🗃 Output Format

Files generated like:

```
YYYYMMDD-HHMMSS.ts
```

Example:

```
20250104-101532.ts
20250104-102045.ts
```

---

## ⚠️ Notes

* Default loop count: **10200** (prevents long-session failures)
* Edit scripts if you want to change output directory (Important!
* Only KEY needed for MPD (not KID)
* Best used for IPTV archiving projects

## 🏷️ Maintained by

**ForoMedios.com Community**
🎧 Discord: [https://discord.foromedios.com](https://discord.foromedios.com)

## 📄 License

MIT — You can modify, share and improve freely. Credit appreciated ❤️


## 🇪🇸 Descripción en Español

**StreamLoop** es un conjunto de scripts para grabar y archivar transmisiones en vivo en Windows y Linux.
Incluye automatización de nombres por fecha/hora, bucles para reconexión automática y soporte para llaves MPD.

### Funciones principales

* Soporte Windows & Linux
* Nombres automáticos por fecha y hora
* Reinicio automático para grabaciones largas
* Carpetas por canal
* Streamlink + FFmpeg
* Soporte para KEY en streams MPD

---

> 👥 Proyecto mantenido por la comunidad de **ForoMedios.com**
> Únete aquí → [https://discord.foromedios.com](https://discord.foromedios.com)

```

