# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the webpage you are looking at and rebuilds the visible browser viewport inside Adobe After Effects using editable text, native shapes, separate image layers and sensible precomps wherever possible.

Created by **Elliot Mckenzie / zura**.

# Install Web2AE

## 1. Install from the Chrome Web Store

[**Install Web2AE from the Chrome Web Store**](https://chromewebstore.google.com/detail/web2ae-%E2%80%94-live-web-to-afte/apfelhnjcinfnjmddlfnikepkddpdllk)

Chrome is the recommended browser and the store version is the normal installation method.

After installing, click Web2AE in Chrome. If the After Effects Companion is missing, Web2AE will give you the download link and the exact next step.

---

## 2. Install the After Effects Companion

[**Download Web2AE Companion for Windows**](https://github.com/ZURAVFX/Web2AE/releases/download/v1.0.2/Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run **Install Web2AE.bat**.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.
6. Leave the Web2AE panel open while capturing pages.

Once the local companion is detected, **Send Current Page to AE** becomes available automatically.

---

# Use Web2AE

1. Open Web2AE in After Effects.
2. Open the webpage you want in your browser.
3. Click the Web2AE browser extension.
4. Click **Send Current Page to AE**.

Web2AE sends the capture to the local companion and builds an After Effects composition.

## What Web2AE creates

- Editable After Effects text where browser typography can be reproduced safely.
- Native shape layers for common cards, buttons, fills and borders.
- Separate images, thumbnails and avatars.
- Rounded clipping and masks where possible.
- Sensible precomps when grouping does not break page stacking.
- Pixel-accurate element layers for complex browser visuals that After Effects cannot reproduce natively.

---

# Firefox

The signed Firefox Add-ons version is not live yet.

For now, use the temporary Firefox build from the current release:

[**Download Firefox v1.0.2 temporary add-on**](https://github.com/ZURAVFX/Web2AE/releases/download/v1.0.2/Web2AE_v1.0.2_Firefox_Manual_Install.zip)

1. Extract the ZIP.
2. Open `about:debugging#/runtime/this-firefox`.
3. Click **Load Temporary Add-on…**.
4. Select `manifest.json`.

**Firefox limitation:** normal Firefox removes unsigned temporary add-ons after a full browser restart. Reload `manifest.json` after restarting Firefox until the signed Firefox Add-ons version is published.

---

# Temporary / test build

Most Chrome users should **not** use this. Install from the Chrome Web Store above.

If the store is still serving an older build and you specifically need the latest v1.0.2 capture hotfix:

[Download Chrome v1.0.2 manual fallback](https://github.com/ZURAVFX/Web2AE/releases/download/v1.0.2/Web2AE_v1.0.2_Chrome_Manual_Install.zip)

Manual install:
1. Extract the ZIP to a permanent folder.
2. Open `chrome://extensions`.
3. Turn on **Developer mode**.
4. Click **Load unpacked**.
5. Select the extracted Web2AE folder.

When the same version is available from the store, remove the manual build and return to the Chrome Web Store version.

---

## v1.0.2 capture fix

v1.0.2 improves capture on modern app-style sites such as YouTube. It prevents zero-size/non-painting layout wrappers from incorrectly clipping valid child elements and improves rendered text-node capture.

The fix is included in both Chrome and Firefox v1.0.2.

## Requirements

- Windows 10/11
- Adobe After Effects 2024 or newer
- Google Chrome or Mozilla Firefox

## Privacy

Web2AE processes a page only when you explicitly press **Send Current Page to AE**. Capture data is sent only to the Web2AE companion running on your own computer at `127.0.0.1:17321`.

There is no cloud processing, analytics account or subscription.

Read the [Privacy Policy](docs/PRIVACY.md).

## Help

- [User Guide](docs/USER_GUIDE.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Report a problem](https://github.com/ZURAVFX/Web2AE/issues)
- [All releases](https://github.com/ZURAVFX/Web2AE/releases)

## Version

Current browser release: **Web2AE v1.0.2**  
Current Windows companion: **Web2AE v1.0.0**

Copyright © 2026 Elliot Mckenzie / zura. All rights reserved.
