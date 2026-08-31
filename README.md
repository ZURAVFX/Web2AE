# Web2AE

**Turn a live webpage into editable After Effects layers.**

Web2AE captures the page you are actually viewing in Chrome, Edge or Firefox and rebuilds the visible viewport in Adobe After Effects using editable text, native shapes, image/raster elements and sensible groups wherever practical.

**Free. Open source. Local-only. No API keys. No subscription.**

Created by **Elliot Mckenzie / zura**.

## Download

- **After Effects companion (Windows):** [`dist/Web2AE_v1.0.0_Companion_Windows.zip`](dist/Web2AE_v1.0.0_Companion_Windows.zip)
- **Chrome Web Store package:** [`dist/Web2AE_v1.0.0_Chrome_Store.zip`](dist/Web2AE_v1.0.0_Chrome_Store.zip)
- **Firefox AMO package:** [`dist/Web2AE_v1.0.0_Firefox_AMO.zip`](dist/Web2AE_v1.0.0_Firefox_AMO.zip)
- **Source archive:** [`dist/Web2AE_v1.0.0_Source.zip`](dist/Web2AE_v1.0.0_Source.zip)

Browser-store links will be added once review is complete.

## What it does

- Captures the **current live browser state**, including logged-in/dynamic pages you can already see.
- Rebuilds normal text as **editable After Effects text layers**.
- Rebuilds flat UI backgrounds, borders and rounded controls as **native shape layers**.
- Keeps thumbnails, photos, video frames, canvas content and difficult CSS as **pixel-accurate element-sized raster layers**.
- Preserves CSS clipping and rounded corners where possible.
- Groups semantic sections/cards into precomps when doing so is paint-order safe.
- Keeps an optional hidden browser screenshot as a fidelity reference.
- Sends page data only to the local Web2AE bridge at `127.0.0.1:17321`.

## Requirements

- Windows 10/11
- Adobe After Effects 2024 or newer
- Chrome, Microsoft Edge or Firefox

## Quick start

1. Download and extract `Web2AE_v1.0.0_Companion_Windows.zip`.
2. Run **Install Web2AE.bat**.
3. Restart After Effects and open **Window → Extensions → Web2AE**.
4. Install the Web2AE browser extension from the Chrome Web Store or Firefox Add-ons once published. Development builds can be loaded unpacked from [`browser-extension/`](browser-extension/).
5. Open a webpage, click the Web2AE browser icon and choose **Send Current Page to AE**.

See the full [User Guide](docs/USER_GUIDE.md).

## How it works

```text
Current browser tab
      ↓
Web2AE browser extension
      ↓
DOM / rendered styles / element geometry / viewport screenshot
      ↓
127.0.0.1:17321
      ↓
Web2AE After Effects companion
      ↓
Editable text + native shapes + element-level raster fallbacks + sensible precomps
```

Chrome/Edge can use Chromium's render-tree snapshot for higher-fidelity layout/paint-order information. Firefox uses the live-DOM collector with element-sized fidelity fallbacks for visuals that cannot be reconstructed safely.

## Privacy

Web2AE does not send browsing data to the developer or any cloud service. A page capture happens only when the user explicitly presses **Send Current Page to AE**, and the capture is sent only to the local companion on the same computer.

See the [Privacy Policy](docs/PRIVACY.md).

## Why the AE companion is a separate installer

Browser extensions are sandboxed and cannot silently write an After Effects CEP extension into Adobe's extension folders or execute arbitrary native installers. Web2AE therefore uses a one-time local companion installation. After that, browser captures are one click.

## Known boundaries

Web2AE targets normal webpages. Browser-internal pages (`chrome://`, `about:`), extension stores, DRM-protected media and some inaccessible cross-origin/closed browser surfaces cannot be captured like normal pages. Complex CSS may be retained as exact element-sized pixels instead of becoming native AE primitives.

## Development

- Browser source: [`browser-extension/`](browser-extension/)
- After Effects CEP source: [`after-effects/`](after-effects/)
- Tests/fixtures: [`tests/`](tests/)
- Store/release docs: [`docs/`](docs/)
- Store artwork: [`store-assets/`](store-assets/)

Bug reports and feature requests are welcome through GitHub Issues.

## Licence

MIT. See [LICENSE](LICENSE).
