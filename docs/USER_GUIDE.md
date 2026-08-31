# Web2AE v1.0 User Guide

# Browser installation

## Google Chrome — temporary manual install

While the Chrome Web Store listing is under review:

1. Download `Web2AE_v1.0.0_Chrome_Manual_Install.zip` from the Web2AE GitHub page/release.
2. Extract it to a permanent folder on your PC.
3. Open `chrome://extensions` in Chrome.
4. Enable **Developer mode**.
5. Click **Load unpacked**.
6. Select the extracted Web2AE folder containing `manifest.json`.
7. Optionally pin Web2AE from Chrome's Extensions menu.

Do not delete or move the extracted Chrome folder while the manually installed extension is in use.

When the official Chrome Web Store version is live, remove the manual build from `chrome://extensions` and install Web2AE from the store instead.

---

## Mozilla Firefox — temporary add-on

Until the signed Firefox Add-ons version is available:

1. Download `Web2AE_v1.0.0_Firefox_Manual_Install.zip` from the Web2AE GitHub page/release.
2. Extract it to a folder on your PC.
3. Open Firefox and go to `about:debugging#/runtime/this-firefox`.
4. Click **Load Temporary Add-on…**.
5. Select `manifest.json` from the extracted Web2AE folder.
6. Web2AE will appear in Firefox's Extensions menu.

**Important:** Firefox's normal release build removes unsigned temporary add-ons after a full browser restart. Repeat steps 3–5 after restarting Firefox until the signed Firefox Add-ons version is available.

When the official Firefox Add-ons version is live, remove the temporary add-on and install the signed store version instead.

---

# After Effects companion — required for Chrome and Firefox

1. Download `Web2AE_v1.0.0_Companion_Windows.zip` from the Web2AE GitHub page.
2. Extract it.
3. Close After Effects.
4. Run `Install Web2AE.bat`.
5. Restart After Effects.
6. Open **Window → Extensions → Web2AE**.

# Send a page to After Effects

1. Open the Web2AE panel in After Effects.
2. Open the exact webpage and viewport you want in Chrome or Firefox.
3. Wait for lazy-loaded images/thumbnails to finish loading.
4. Click the Web2AE browser extension.
5. Click **Send Current Page to AE**.
6. Web2AE sends the capture to the local After Effects companion and builds the composition.

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
