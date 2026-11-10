# Anamika's 30th Birthday Bash 🎉🎁🎨

A single-file interactive treasure hunt: 30 hands-on craft mini-games (6 chapters × 5 stations). Solve each station to unseal a gift card. The grand finale (station 30) only opens once the other 29 stations are done.

## Live website (GitHub Pages)
`https://glametown.github.io/Treasure-hunt/` (Settings → Pages → Branch: `main`, Folder: `/ (root)`)

## How it works
- Everything lives in `index.html` — no build step needed to run it, and no external CDN is required for the layout (the Tailwind CSS is precompiled and inlined; only the Google Fonts are optional and fall back to system fonts).
- Works on phones and desktops. Progress and sound preference are saved in the browser's `localStorage`.
- Chapters: I Pigment & Brush · II Paper & Origami · III Clay & Tactile Kiln · IV Glass, Light & Shadow · V Fiber, Loom & Dye · VI Darkroom & Finale.

## Organizer shortcuts (hidden behind a PIN)
Tap **🔒 Organizer** at the bottom of the page and enter PIN `1234` to reveal:
- **✨ Studio Master Key** on each station — auto-completes it.
- **Gift Vault → Unlock All 30 (Preview)** — unseals every gift. (**Reset All Progress** is always visible.)

The PIN is checked in the browser (`ORGANIZER_PIN` in `index.html`), so it keeps players out but is not real security.

## Editing the gifts / stations
Station text, gift names and gift notes are in the `STATIONS` array near the top of the `<script>` in `index.html`.

**Gift numbers are shuffled.** The number players see ("Gift #13") is not the station number. The mapping is the `GIFT_NO` table right above `STATIONS` (station id → gift number, every number 1-30 used once). Edit that table to renumber the gifts to match your physical presents.

## The 30 games
Every station is a hands-on craft game (finger painting, folding, cutting, mending, weaving, dyeing, stitching, balancing, focusing, and so on). Each opens with a "Goal + 3 steps" card. Stations 4, 10, 13, 16, 24, 25 and 29 end with a **Save my creation** button so she can keep what she made.

### Changing styles
Utility classes are compiled with Tailwind CSS 3.4 and inlined in `<style id="tw-compiled">`. If you add new Tailwind classes, recompile:
```bash
npx tailwindcss@3.4.17 -i input.css -o out.css --minify   # content: index.html, input.css = the three @tailwind directives
```
then paste the output into the `tw-compiled` style block.
