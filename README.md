# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the webpage you are looking at and rebuilds the visible browser viewport inside Adobe After Effects using editable text, native shapes, separate image layers and sensible precomps wherever possible.

Created by **Elliot Mckenzie / zura**.

# Install Web2AE

Web2AE now guides you through the After Effects setup from inside the browser extension. If the AE Companion is missing, the extension gives you a direct download button and the exact next step.

## Google Chrome

> **Temporary manual install while the Chrome Web Store listing is under review.**

[**Download Web2AE v1.0.1 for Chrome — Manual Install**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.1_Chrome_Manual_Install.zip)

1. Download and extract the Chrome ZIP to a permanent folder.
2. Open `chrome://extensions`.
3. Turn on **Developer mode**.
4. Click **Load unpacked** and select the extracted Web2AE folder.
5. Click Web2AE in Chrome. The extension will guide you through the rest of setup automatically.

**Important:** do not delete or move the extracted folder while the manual Chrome version is installed.

When the official Chrome Web Store version becomes available, remove the manual build and install the store version instead.

---

## Mozilla Firefox

> **Temporary manual install while the signed Firefox Add-ons version is not yet live.**

[**Download Web2AE v1.0.1 for Firefox — Temporary Add-on**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.1_Firefox_Manual_Install.zip)

1. Download and extract the Firefox ZIP.
2. Open `about:debugging#/runtime/this-firefox`.
3. Click **Load Temporary Add-on…**.
4. Select `manifest.json` from the extracted Web2AE folder.
5. Click Web2AE in Firefox. The extension will guide you through installing the AE Companion.

**Firefox limitation:** normal Firefox removes unsigned temporary add-ons after a full browser restart. Until the signed Firefox Add-ons version is published, repeat steps 2–4 after restarting Firefox.

---

# After Effects Companion — required for both browsers

You usually do not need to find this manually anymore: Web2AE links directly to it whenever the companion is missing.

[**Download Web2AE Companion v1.0 for Windows**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run **Install Web2AE.bat**.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.
6. Leave the Web2AE panel open while capturing pages.

Once the local companion is detected, the browser extension automatically enables **Send Current Page to AE**.

# Send a webpage to After Effects

1. Open Web2AE in After Effects.
2. Open the webpage you want in Chrome or Firefox.
3. Click the Web2AE browser extension.
4. Click **Send Current Page to AE**.

Web2AE sends the capture to the local After Effects companion and builds an After Effects composition.

## What Web2AE creates

- Editable After Effects text where browser typography can be reproduced safely.
- Native shape layers for common cards, buttons, fills and borders.
- Separate images, thumbnails and avatars.
- Rounded clipping and masks where possible.
- Sensible precomps when grouping does not break page stacking.
- Pixel-accurate element layers for complex browser visuals that After Effects cannot reproduce natively.

## Requirements

- Windows 10/11
- Adobe After Effects 2024 or newer
- Google Chrome **or** Mozilla Firefox

## Privacy

Web2AE processes a page only when you explicitly press **Send Current Page to AE**. Capture data is sent only to the Web2AE companion running on your own computer at `127.0.0.1:17321`.

There is no cloud processing, analytics account or subscription.

Read the [Privacy Policy](docs/PRIVACY.md).

## Help

- [User Guide](docs/USER_GUIDE.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Report a problem](https://github.com/ZURAVFX/Web2AE/issues)

## Version

Current browser release: **Web2AE v1.0.1**  
Current Windows companion: **Web2AE v1.0.0**

Copyright © 2026 Elliot Mckenzie / zura. All rights reserved.
