# StreamLoop

Cross-platform scripts for recording and archiving live streams using Streamlink + FFmpeg.  
Supports Windows and Linux, HLS and MPD sources, custom output naming, and auto-loop recording.

## Features

- Record live streams automatically
- Designed for long-term archiving
- Timestamp-based file naming
- Folder auto-creation per stream
- Loop-based recording (auto restarts)
- Windows & Linux support
- Decryption key input (DRM KID:KEY support for MPD in Windows*)

> \* Only the **KEY** portion is required, not the full `KID:KEY` string.

---

## 📂 Scripts Included

| File | OS | Purpose |
|------|----|--------|
| `windows.bat` | Windows | General stream recording |
| `windows-mpd.bat` | Windows | MPD stream recording + KEY input support |
| `linux.sh` | Linux | General stream recording & auto-folders |

---

## 🧰 Requirements

- **Streamlink**
- **FFmpeg**
- Internet connection
- Valid stream URL (HLS/MPD, etc.)

Install Streamlink:

### Windows (this is required for the DRM script)
https://github.com/Scotto0/streamlink
