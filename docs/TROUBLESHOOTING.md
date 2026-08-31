# Web2AE Troubleshooting

## Chrome extension says the After Effects companion is not available
Open After Effects, then open **Window → Extensions → Web2AE**. Leave the Web2AE panel open while you capture.

If that still does not work, restart After Effects and try again.

## The page captured zero or very few elements
- Reload the webpage.
- Wait for lazy-loaded images to finish loading.
- Make sure the page is a normal website rather than a browser-internal page such as `chrome://`.
- Try the capture again.

## Fonts do not match exactly
Web2AE uses the font information reported by the browser. Install the same font locally in Windows/Adobe if you want editable text to match more closely.

## A complex visual is raster instead of editable
That is expected when After Effects cannot faithfully recreate a browser-only visual effect. Web2AE prefers a pixel-accurate element rather than an incorrect editable reconstruction.

## Need help?
Open an issue at:
https://github.com/ZURAVFX/Web2AE/issues

Include:
- Chrome version
- After Effects version
- Web2AE Activity log
- Screenshot of the source viewport
- Screenshot of the resulting AE composition
