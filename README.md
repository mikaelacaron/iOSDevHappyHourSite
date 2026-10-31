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

## SEO

### Hosting: GitHub Pages

> **Deploys go to GitHub Pages** from this repo (`mikaelacaron/iOSDevHappyHourSite`), replacing the current Heroku site. The workflow in `.github/workflows/deploy.yml` runs on every push to `main`, or by hand from the Actions tab. Full guide: https://docs.astro.build/en/guides/deploy/github/

1. **Turn on Pages.** Repo → Settings → Pages → Source: **GitHub Actions**.
2. **Set the custom domain.** Same page → Custom domain: `www.iosdevhappyhour.com`. No `base` setting is needed in `astro.config.mjs` because the site is served at the domain root.
3. **Point DNS at GitHub.** At the domain registrar (Squarespace), change the `www` record to a `CNAME` pointing to `mikaelacaron.github.io`. Keep the existing 301 redirect from `iosdevhappyhour.com` and `http://` to `https://www.iosdevhappyhour.com/`.
4. **Enforce HTTPS.** Back in Settings → Pages, check **Enforce HTTPS** once GitHub finishes issuing the certificate (can take up to an hour after DNS updates).
5. **Verify the domain with GitHub** (recommended). Your GitHub profile → Settings → Pages → Add a domain. This stops anyone else's repo from claiming `iosdevhappyhour.com` if the Pages setup ever gets removed.

What GitHub Pages handles for you, and what it can't do:

- **Compression:** on automatically (gzip). The HTML goes from 17 kB to about 6 kB.
- **Caching:** fixed at 10 minutes for every file, and it can't be changed. That's fine for a single page this small.
- **Custom headers:** not supported. The `X-Content-Type-Options` and `X-Frame-Options` headers the Heroku site sends will go away. That's low risk for a static page with no forms or logins.

### After deploy

1. **Set up Google Search Console** (~10 min, one time). This is Google's free dashboard for the site. It lets you ask Google to re-read the page after changes, confirms the page is in search results, shows what people searched to find it, and emails you if something breaks.
   - Go to https://search.google.com/search-console and sign in with a Google account.
   - Choose **Domain** and enter `iosdevhappyhour.com`.
   - Copy the TXT record Google gives you, add it in your domain registrar's DNS settings, then click **Verify**. DNS changes can take a few minutes.
2. **Request indexing in Google Search Console.** Paste `https://www.iosdevhappyhour.com/` into the search bar at the top (the URL Inspection tool), then click **Request indexing**. This gets the new description and banner into Google results sooner.
3. **Check the link previews:**
   - Facebook/LinkedIn style: https://www.opengraph.xyz
   - Structured data: https://search.google.com/test/rich-results
   - Discord: paste the link in a private channel
4. **Run Lighthouse** (~5 min). In Chrome, open the live site, then DevTools → Lighthouse → check SEO and Performance → Analyze. Fix anything below 100. (You can also run it before deploying with `npm run build && npm run preview` at `localhost:4321`, but the live site gives the real numbers.)
