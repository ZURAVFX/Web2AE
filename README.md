# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the webpage you are looking at and rebuilds the visible browser viewport inside Adobe After Effects using editable text, native shapes, separate image layers and sensible precomps wherever possible.

Created by **Elliot Mckenzie / zura**.

# Install Web2AE

## Google Chrome

> **Temporary manual install while the Chrome Web Store listing is under review.**

[**Download Web2AE v1.0 for Chrome — Manual Install**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Chrome_Manual_Install.zip)

1. Download the Chrome ZIP above.
2. Extract it to a permanent folder on your PC.
3. Open `chrome://extensions` in Chrome.
4. Turn on **Developer mode** in the top-right.
5. Click **Load unpacked**.
6. Select the extracted Web2AE folder containing `manifest.json`.
7. Pin Web2AE from Chrome's Extensions menu if you want quick access.

**Important:** do not delete or move the extracted folder while the manual Chrome version is installed.

When the official Chrome Web Store version becomes available, remove the manual build from `chrome://extensions` and install the store version instead.

---

## Mozilla Firefox

> **Temporary manual install while the signed Firefox Add-ons version is not yet live.**

[**Download Web2AE v1.0 for Firefox — Temporary Add-on**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Firefox_Manual_Install.zip)

1. Download and extract the Firefox ZIP above.
2. Open Firefox.
3. Go to `about:debugging#/runtime/this-firefox`.
4. Click **Load Temporary Add-on…**.
5. Select `manifest.json` from the extracted Web2AE folder.
6. Web2AE will appear in Firefox's extensions menu.

**Firefox limitation:** normal Firefox removes unsigned temporary add-ons after a full browser restart. Until the signed Firefox Add-ons version is published, repeat steps 3–5 after restarting Firefox.

Once the official Firefox Add-ons version is live, remove the temporary build and install the signed store version instead.

---

# After Effects Companion — required for both browsers

[**Download Web2AE Companion v1.0 for Windows**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run **Install Web2AE.bat**.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.
6. Leave the Web2AE panel open while capturing pages.

# Send a webpage to After Effects

### From Chrome
1. Open the webpage you want in Chrome.
2. Click the Web2AE extension.
3. Choose **Send Current Page to AE**.

### From Firefox
1. Open the webpage you want in Firefox.
2. Click the Web2AE extension.
3. Choose **Send Current Page to AE**.

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

Current public release: **Web2AE v1.0**

Copyright © 2026 Elliot Mckenzie / zura. All rights reserved.
