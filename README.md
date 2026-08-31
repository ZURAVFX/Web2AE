# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the webpage you are looking at and rebuilds the visible browser viewport inside Adobe After Effects using editable text, native shapes, separate image layers and sensible precomps wherever possible.

Created by **Elliot Mckenzie / zura**.

## Install Web2AE

### 1. Install the Chrome extension

**Chrome Web Store:** the public install link will be added here as soon as Google finishes reviewing the v1.0 listing.

> The Chrome extension has already been submitted. There is no need to download or sideload a browser-extension ZIP from GitHub.

### 2. Install the After Effects companion

[**Download Web2AE Companion v1.0 for Windows**](Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run **Install Web2AE.bat**.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.

### 3. Capture a webpage

1. Open Web2AE in After Effects and leave the panel open.
2. Open the webpage you want in Chrome.
3. Click the Web2AE Chrome extension.
4. Choose **Send Current Page to AE**.
5. Web2AE builds the page as an After Effects composition.

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
- Google Chrome

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
