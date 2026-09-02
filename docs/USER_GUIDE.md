# Web2AE v1.0 User Guide

# Browser installation

Web2AE v1.0.2 guides first-time users through the After Effects setup directly from the browser extension. If the local AE Companion is missing, Web2AE shows a direct **Download AE Companion** button, a short three-step setup, and a link back to the Web2AE support page.

## Google Chrome

[**Install Web2AE from the Chrome Web Store**](https://chromewebstore.google.com/detail/web2ae-%E2%80%94-live-web-to-afte/apfelhnjcinfnjmddlfnikepkddpdllk)

The Chrome Web Store listing is live. Install from the store normally, then click Web2AE in Chrome. The extension will tell you if the After Effects Companion is missing and link directly to it.

If Google is still processing the v1.0.2 store update and you need the latest capture hotfix immediately, use the manual fallback:

[Download Web2AE v1.0.2 for Chrome — Manual Hotfix](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Chrome_Manual_Install.zip)

Manual fallback:
1. Extract it to a permanent folder.
2. Open `chrome://extensions`.
3. Enable **Developer mode**.
4. Click **Load unpacked** and select the extracted Web2AE folder.
5. Click Web2AE and follow the built-in setup.

When v1.0.2 is live in the Chrome Web Store, remove the manual build and use the store version.

---

## Mozilla Firefox — temporary add-on

Until the signed Firefox Add-ons version is available:

1. Download [Web2AE v1.0.2 for Firefox — Temporary Add-on](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Firefox_Manual_Install.zip).
2. Extract it to a folder on your PC.
3. Open Firefox and go to `about:debugging#/runtime/this-firefox`.
4. Click **Load Temporary Add-on…**.
5. Select `manifest.json` from the extracted Web2AE folder.
6. Click Web2AE. The extension will guide you through the AE Companion setup.

**Important:** Firefox's normal release build removes unsigned temporary add-ons after a full browser restart. Repeat steps 3–5 after restarting Firefox until the signed Firefox Add-ons version is available.

---

# After Effects companion — required for Chrome and Firefox

The browser extension links directly to this whenever it is not detected.

1. Download [Web2AE Companion v1.0 for Windows](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Companion_Windows.zip).
2. Extract it completely.
3. Close After Effects.
4. Run `Install Web2AE.bat`.
5. Restart After Effects.
6. Open **Window → Extensions → Web2AE**.

As soon as the browser extension detects the local bridge, the setup panel disappears and **Send Current Page to AE** becomes available automatically.

# Send a page to After Effects

1. Open the Web2AE panel in After Effects.
2. Open the exact webpage and viewport you want in Chrome or Firefox.
3. Wait for lazy-loaded images/thumbnails to finish loading.
4. Click the Web2AE browser extension.
5. Click **Send Current Page to AE**.
6. Web2AE sends the capture to the local After Effects companion and builds the composition.

## v1.0.2 modern-site capture fix

v1.0.2 fixes an issue seen on YouTube and other app-style sites where Web2AE could detect hundreds of images, SVGs and text nodes but then discard them during clipping. Zero-size/non-painting layout wrappers are no longer allowed to collapse a valid child element to 0×0, and text ranges can be captured even when their custom-element wrapper does not expose a useful rendered box.

## Layer behaviour

Web2AE chooses the representation that gives the best balance of editability and fidelity:

- **Text** → editable AE text where safe.
- **Cards/buttons/backgrounds** → native shape layers where possible.
- **Images/thumbnails/avatars** → separate visual layers.
- **Complex CSS/canvas/effects** → tightly bounded pixel-accurate fallback layers.
- **Sections/cards** → precomps when grouping is safe.

A hidden browser reference layer may also be included so you can compare the reconstruction against the original page.

## Tips

- Capture at the browser zoom and viewport size you intend to animate.
- Let images finish loading first.
- For infinite feeds, capture one visible viewport at a time.
- Exact browser typography may depend on having the same font installed locally.
- Complex visual effects may remain raster rather than becoming editable AE primitives.

## Privacy

A capture happens only when you explicitly request it. Web2AE sends the selected page only to the companion on your own computer at `127.0.0.1:17321`.

No cloud processing is required.
