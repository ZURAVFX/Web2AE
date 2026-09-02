# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the webpage you are looking at and rebuilds the visible browser viewport inside Adobe After Effects using editable text, native shapes, separate image layers and sensible precomps wherever possible.

Created by **Elliot Mckenzie / zura**.

# Install Web2AE

## 1. Install the browser extension

### Google Chrome — recommended

[**Install Web2AE from the Chrome Web Store**](https://chromewebstore.google.com/detail/web2ae-%E2%80%94-live-web-to-afte/apfelhnjcinfnjmddlfnikepkddpdllk)

Install Web2AE normally from the Chrome Web Store, then click the Web2AE icon. The extension will tell you if the After Effects Companion is missing and link directly to it.

### Mozilla Firefox

The signed Firefox Add-ons version is not live yet. Use the temporary Firefox build in the **Temporary / test builds** section below for now.

---

## 2. Install the After Effects Companion

[**Download Web2AE Companion for Windows**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run **Install Web2AE.bat**.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.
6. Leave the Web2AE panel open while capturing pages.

The browser extension checks for the local companion automatically. Once it is detected, **Send Current Page to AE** becomes available.

---

# Use Web2AE

1. Open the Web2AE panel in After Effects.
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

# Temporary / test builds

These are only for testing fixes before the browser-store versions catch up.

### Chrome v1.0.2 manual hotfix

[Download Chrome v1.0.2 manual hotfix](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Chrome_Manual_Install.zip)

Use this only if the Chrome Web Store is still serving an older build and you specifically need the latest YouTube/modern-site capture fix.

Manual install:
1. Open `chrome://extensions`.
2. Turn on **Developer mode**.
3. Click **Load unpacked**.
4. Select the extracted Web2AE folder.

When the store update is live, remove the manual build and go back to the Chrome Web Store version.

### Firefox v1.0.2 temporary add-on

[Download Firefox v1.0.2 temporary add-on](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Firefox_Manual_Install.zip)

1. Extract the ZIP.
2. Open `about:debugging#/runtime/this-firefox`.
3. Click **Load Temporary Add-on…**.
4. Select `manifest.json`.

**Firefox limitation:** normal Firefox removes unsigned temporary add-ons after a full browser restart. Reload `manifest.json` after restarting Firefox until the signed Firefox Add-ons version is available.

---

## v1.0.2 capture fix

v1.0.2 fixes a modern-app capture bug seen on YouTube where Web2AE could detect hundreds of images, SVGs and text nodes but then discard them during clipping.

The fix is included in **both Chrome and Firefox v1.0.2**. Zero-size/non-painting layout wrappers can no longer collapse otherwise valid child elements to 0×0, and rendered text ranges can survive custom wrappers that do not expose a useful element box.

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

## Version

Current browser hotfix: **Web2AE v1.0.2**  
Current Windows companion: **Web2AE v1.0.0**

Copyright © 2026 Elliot Mckenzie / zura. All rights reserved.
