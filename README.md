# Anycubic Slicer Next - Flatpak Packaging
This repository provides a Flatpak manifest to package the official Anycubic Slicer Next for Linux. Since Anycubic only provides a .deb package for Ubuntu 24.04, this Flatpak version allows you to run the slicer on almost any Linux distribution (Fedora, Arch, Debian, etc.) in a secure, sandboxed environment.

Features
Compatibility: Runs on any distro with Flatpak installed.

Stability: Uses the GNOME 47 Runtime to match the slicer's dependencies.

Fixes: Includes specific WebKit fixes to prevent the "white screen" login and home tab issues.

Hardware Access: Supports USB printing and local network discovery (Kobra series).

Installation
1. Prerequisites
Ensure you have flatpak installed on your system. If not, follow the setup guide.

2. Download the Bundle
Go to the [Releases] section of this repository and download the latest .flatpak file.

3. Install
Run the following command in your terminal:

Bash
flatpak install --user anycubic-slicer.flatpak
How to Build Locally
If you want to build the package yourself:

Clone the repo:

Bash
git clone https://github.com/YOUR_USERNAME/anycubic-slicer-flatpak.git
cd anycubic-slicer-flatpak
Install the SDK:

Bash
flatpak install flathub org.gnome.Sdk//47 org.gnome.Platform//47
Build and Install:

Bash
flatpak-builder --user --install --force-clean build-dir com.anycubic.AnycubicSlicer.json
Known Issues
GTK Warnings: You might see Gtk-CRITICAL assertions in the terminal. These are common in wxWidgets-based slicers (like OrcaSlicer/PrusaSlicer) and can be safely ignored.

GPU Acceleration: If the 3D view is laggy or flickering, try running with: flatpak run --env=WEBKIT_DISABLE_COMPOSITING_MODE=1 com.anycubic.AnycubicSlicer

Legal Disclaimer
This project is not affiliated with, maintained, or endorsed by Anycubic. Anycubic Slicer Next is based on OrcaSlicer (AGPL v3). The build process downloads official binaries directly from Anycubic's servers. All trademarks and logos belong to their respective owners.

License
The manifest and wrapper scripts in this repository are licensed under the MIT License.

Pro-tip for your GitHub Repo:
When you upload this, go to your repository Settings and look for the "About" section on the right side. Add these tags (topics) to help people find your project: anycubic slicernext flatpak 3d-printing linux kobra-s1

Would you like me to help you set up the MIT License file content as well, or are you all set with the GitHub template?
