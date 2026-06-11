# 🎉 copyparty — Setup Wizard

A sleek, interactive web-based configuration wizard for [copyparty](https://github.com/9001/copyparty) — a self-hosted file server written in Python.

**Live:** [https://n0access.github.io/copyparty-wizard](https://n0acc3ss.github.io/copyparty-wizard)

---

## ✨ Features

- **Platform selector** — generates commands for Linux (Ubuntu), Windows (PowerShell), and Android (Termux)
- **Visual flag builder** — toggle and configure every major copyparty flag through a clean UI
- **Live command preview** — see the full `python3 -m copyparty` command update in real time
- **Permission editor** — visual `r / w / m / d / a` permission picker per volume
- **Volume configurator** — set source path, URL path, and per-volume permissions
- **User account builder** — add multiple `user:pass` accounts with password masking
- **Installation guide** — step-by-step install instructions per platform, copyable with one click
- **WSL path-aware** — Windows paths entered in volume fields work naturally in WSL

---

## 🚀 Deploy to GitHub Pages (Windows + WSL)

### 1 · Create a GitHub repository

Go to [github.com/new](https://github.com/new) and create a **public** repository named `copyparty-wizard` (or any name you like). Do **not** initialise it with a README.

### 2 · Open Ubuntu in Windows Terminal

```powershell
wsl
```

### 3 · Clone / initialise the repo

```bash
# If you just created the repo on GitHub:
cd ~
git clone https://github.com/YOUR-USERNAME/copyparty-wizard.git
cd copyparty-wizard
```

Or if you're starting fresh in a new folder:

```bash
mkdir copyparty-wizard && cd copyparty-wizard
git init
git remote add origin https://github.com/YOUR-USERNAME/copyparty-wizard.git
```

### 4 · Copy the wizard file

```bash
# Copy index.html into the repo (adjust path to wherever you saved it)
cp /path/to/copyparty-wizard/index.html .
```

### 5 · Commit and push

```bash
git add index.html README.md
git commit -m "feat: add copyparty setup wizard"
git branch -M main
git push -u origin main
```

### 6 · Enable GitHub Pages

1. On GitHub, go to your repo → **Settings** → **Pages**
2. Under **Source**, select `Deploy from a branch`
3. Branch: `main`, folder: `/ (root)`
4. Click **Save**

After ~60 seconds, your wizard will be live at:

```
https://YOUR-USERNAME.github.io/copyparty-wizard
```

---

## 🏃 Run Locally

No build step needed — it's a single self-contained HTML file.

```bash
# Python (any OS)
python3 -m http.server 8080
# then open http://localhost:8080
```

Or just open `index.html` directly in your browser.

---

## 📋 Supported Options (by category)

| Category | Flags covered |
|---|---|
| Essential | `-p` port, `-j` cores, `-a` accounts, `-v` volumes, `--name`, `--usernames`, `--chdir` |
| Network | `-i` listen IP, `-nc` max clients, `--rproxy`, `--rp-loc`, `--ipa` allowlist |
| SSL / TLS | `--http-only`, `--https-only`, `--cert`, `--no-crt`, `--crt-ns`, `--crt-alg` |
| Authentication | `--chpw`, `--ban-pw`, `--logout`, `--ipu` IP auto-login |
| Upload & Files | `--dotpart`, `--no-del`, `--no-mv`, `--hardlink`, `--unpost`, `--daw`, `--ftp` |
| Database & Search | `-e2t`, `-e2ts`, `-e2tsr`, `--re-maxage`, `--srch-icase`, `--srch-hits`, `--dbd` |
| Thumbnails & Media | `--no-thumb`, `--no-vthumb`, `--no-athumb`, `--th-size`, `--q-opus`, `--q-mp3`, `--allow-flac` |
| Network Discovery | `-z` mDNS+SSDP, `--zm`, `--opds`, `--smb` |
| Safety & Security | `-s`, `-ss`, `-sss` presets, `--vague-403`, `--no-robots`, `--force-js`, `--xvol`, `--xdev` |
| UI & Display | `--grid`, `--theme`, `--lang`, `--localtime`, `--doctitle`, `--favico`, `--ih` |
| QR Code | `--qr`, `--qrs`, `--qrl`, `--qri`, `--qrz`, `--qr-every` |
| Logging | `-q`, `-lo`, `--ansi`, `--no-ansi`, `--log-utc` |

---

## 🔧 About copyparty

[copyparty](https://github.com/9001/copyparty) is a feature-rich, self-hosted file server:
- Runs on Python 3 — no Docker required
- Supports Windows, Linux, macOS, Android (Termux)
- WebDAV, FTP, SMB, OPDS, and browser UI
- Metadata indexing, search, and media transcoding

---

## 📄 License

This wizard is released under **MIT**. copyparty itself has its own license — see the [copyparty repo](https://github.com/9001/copyparty).
