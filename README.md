# iOS Dev Happy Hour

One-page landing site for [#iOSDevHappyHour](https://www.iosdevhappyhour.com), built with [Astro](https://astro.build).

## Requirements

Node.js 26 LTS (see `.nvmrc`; run `nvm use`). Astro 7 requires Node >= 22.23.4.

## Commands

| Command           | Action                                      |
| :---------------- | :------------------------------------------ |
| `npm install`     | Install dependencies                        |
| `npm run dev`     | Start the dev server at `localhost:4321`    |
| `npm run build`   | Build the static site to `./dist/`          |
| `npm run preview` | Preview the production build locally        |

## Structure

```
src/
  config.ts             # Site metadata, quote, social links
  layouts/Layout.astro  # <head> + OpenGraph/Twitter meta tags
  pages/index.astro     # The page: Hero, About Us, Quote, Footer
  components/           # Hero, AboutUs, Quote, Footer
  icons/                # Social, Discord, and Buy Me a Coffee SVGs (Font Awesome Free, CC BY 4.0)
  styles/global.css     # Colors, font, base styles, .container
  assets/idhh-banner.png # 2160x1080 banner: home page hero (responsive WebP) + link-preview image (1200x600 JPG)
public/robots.txt       # Allows all crawlers
```

### After deploy

1. **Check the link previews:**
   - Facebook/LinkedIn style: https://www.opengraph.xyz
   - Structured data: https://search.google.com/test/rich-results
   - Discord: paste the link in a private channel