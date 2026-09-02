# Web2AE User Guide

# Recommended install

## Google Chrome

[**Install Web2AE from the Chrome Web Store**](https://chromewebstore.google.com/detail/web2ae-%E2%80%94-live-web-to-afte/apfelhnjcinfnjmddlfnikepkddpdllk)

This is the normal installation method.

After installing, click Web2AE in Chrome. If the After Effects Companion is missing, Web2AE will show a direct download button and tell you exactly what to do next.

## After Effects Companion

[**Download Web2AE Companion for Windows**](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.0_Companion_Windows.zip)

1. Download and extract the ZIP.
2. Close After Effects.
3. Run `Install Web2AE.bat`.
4. Restart After Effects.
5. Open **Window → Extensions → Web2AE**.

Once the browser detects the companion, **Send Current Page to AE** becomes available automatically.

# Send a page to After Effects

1. Open the Web2AE panel in After Effects.
2. Open the exact webpage and viewport you want in Chrome or Firefox.
3. Let lazy-loaded images finish loading.
4. Click the Web2AE browser extension.
5. Click **Send Current Page to AE**.
6. Web2AE sends the capture to the local companion and builds the composition.

---

# Temporary / test builds

Use these only while testing fixes that have not yet reached the browser stores.

## Chrome v1.0.2 manual hotfix

[Download Chrome v1.0.2 manual hotfix](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Chrome_Manual_Install.zip)

1. Extract it to a permanent folder.
2. Open `chrome://extensions`.
3. Enable **Developer mode**.
4. Click **Load unpacked**.
5. Select the extracted Web2AE folder.

When the same version reaches the Chrome Web Store, remove the manual build and return to the store version.

## Firefox v1.0.2 temporary add-on

The signed Firefox Add-ons version is not live yet.

[Download Firefox v1.0.2 temporary add-on](https://github.com/ZURAVFX/Web2AE/releases/download/manual-v1.0/Web2AE_v1.0.2_Firefox_Manual_Install.zip)

1. Extract the ZIP.
2. Open `about:debugging#/runtime/this-firefox`.
3. Click **Load Temporary Add-on…**.
4. Select `manifest.json`.

**Important:** Firefox removes unsigned temporary add-ons after a full browser restart. Reload `manifest.json` after restarting Firefox until the signed Firefox Add-ons version is published.

---

# v1.0.2 YouTube / modern-site fix

v1.0.2 fixes an issue where Web2AE could detect hundreds of rendered images, SVGs and text nodes but then discard them during clipping on app-style sites such as YouTube.

The fix is shared by **both Chrome and Firefox v1.0.2**. It prevents zero-size/non-painting wrappers from collapsing valid children to 0×0 and allows rendered text ranges to be captured even when a custom wrapper does not expose a useful element box.

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
