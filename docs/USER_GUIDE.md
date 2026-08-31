# Web2AE v1.0 User Guide

## Install

### Chrome extension
Install Web2AE from the Chrome Web Store once the public listing is live. The GitHub page will always point to the current store version.

### After Effects companion
1. Download `Web2AE_v1.0.0_Companion_Windows.zip` from the Web2AE GitHub page.
2. Extract it.
3. Close After Effects.
4. Run `Install Web2AE.bat`.
5. Restart After Effects.
6. Open **Window → Extensions → Web2AE**.

## Send a page to After Effects

1. Open the Web2AE panel in After Effects.
2. Open the exact webpage and viewport you want in Chrome.
3. Wait for lazy-loaded images/thumbnails to finish loading.
4. Click the Web2AE Chrome extension.
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
