# Anycubic Slicer Next - Flatpak (Unofficial)

[![Build and Auto-Update Flatpak](https://github.com/timmit-tech/AnycubicSlicerNext-flatpak/actions/workflows/flatpak-build.yml/badge.svg)](https://github.com/timmit-tech/AnycubicSlicerNext-flatpak/actions/workflows/flatpak-build.yml)
[![Latest Release](https://img.shields.io/github/v/release/timmit-tech/AnycubicSlicerNext-flatpak?label=Version&color=blue)](https://github.com/timmit-tech/AnycubicSlicerNext-flatpak/releases)
[![License](https://img.shields.io/github/license/timmit-tech/AnycubicSlicerNext-flatpak)](https://github.com/timmit-tech/AnycubicSlicerNext-flatpak/blob/master/LICENSE)

An unofficial **Flatpak packaging** for [Anycubic Slicer Next](https://anycubic.com/en/slicerNextDownload). 

Anycubic Slicer Next is based on **OrcaSlicer** and is optimized for Anycubic FDM printers (Kobra series, etc.). While Anycubic officially only provides a `.deb` package for Ubuntu 24.04, this Flatpak allows you to run the slicer on **any Linux distribution** (Fedora, Arch, Debian, SteamOS, etc.) in a secure, sandboxed environment.

---

## 🚀 Installation

### 1. Download
Go to the [Latest Releases](https://github.com/timmit-tech/AnycubicSlicerNext-flatpak/releases/latest) page and download the `.flatpak` file.

### 2. Install
Open your terminal in the download folder and run:
```bash
flatpak install --user anycubic-slicer-*.flatpak
```
### 3. Launch

You can find "Anycubic Slicer Next" in your application menu, or launch it via terminal:
```bash
flatpak run com.anycubic.AnycubicSlicer
```
## :hammer_and_wrench: How it Works (CI/CD Automation)
This repository is fully automated using GitHub Actions:

* **Weekly Check:** Every Monday, a workflow checks Anycubic's official Ubuntu repository for updates.

* **Auto-Update:** If a new version is found, the manifest is automatically updated with the new URL and SHA256 hash.

* **Auto-Build:** A new Flatpak bundle is built and automatically published as a GitHub Release.

## 🔧 Permissions & Troubleshooting
Networking (OctoPrint/Moonraker/Anycubic Cloud)
If you have trouble connecting to your printer over the network, you may need to grant additional permissions. The easiest way to manage this is via Flatseal.

Wayland vs X11
If the application flickers or doesn't start on Wayland, try forcing it to run via XWayland:
```bash
flatpak run --nosocket=wayland com.anycubic.AnycubicSlicer
```
## ⚖️ Legal Disclaimer
This is an unofficial community project. Anycubic Slicer Next is developed and owned by Anycubic. The software is based on OrcaSlicer and is subject to the AGPL-3.0 License. This repository only provides the build scripts and manifest to containerize the official binary.

## Maintained by [timmit-tech](https://github.com/timmit-tech)
