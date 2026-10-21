# Behruz — personal website

Source for [behruz.me](https://behruz.me), hosted on GitHub Pages.

I’m an engineer and sociologist based in Central Asia, building AI tools, Rust infrastructure, and reproducible agent-based research.

## What’s on the site

- **Simulation and social research:** Hiyal and Social Emergence Lab.
- **AI infrastructure and tools:** Seatline, Sharh, Lineleaf, TabBeam, and Shoora (currently published as Conclave).
- **Learning products:** BandUp and the Studio interface.
- **Journal:** current project notes and the preserved 2022–2023 archive.

Project descriptions distinguish development prototypes, experimental infrastructure, and exploratory research.

## Structure

- `index.md` — homepage content, with YAML front matter and semantic HTML.
- `journal.md` — journal index and original archived entries.
- `journal/*.md` — current project notes with explicit permalinks.
- `_layouts/default.html` — shared navigation, page metadata, and reading layout.
- `_includes/recent-notes.html` — journal links shared by the homepage and journal index.
- `assets/css/site.css` — responsive styles, including keyboard focus and reduced-motion support.
- `assets/favicon.svg` — site icon.
- `_config.yml` — Jekyll site metadata and configuration.
- `CNAME` — existing custom domain.
- `journal-redirect.html` — preserves the older `/journal.html` URL.

## Editing and publishing

Edit the Markdown, HTML, and CSS directly. GitHub Pages builds the site from the repository’s existing publishing configuration; no application server, JavaScript bundle, or custom dependency installation is required.

When adding a journal note, give it a title, description, explicit permalink, category, and display date. Add its link to `_includes/recent-notes.html` and `sitemap.xml`. Preserve existing public URLs when revising content.

Keep project status and capability descriptions aligned with the relevant repository and its authoritative implementation tracker. The website links only to public source repositories; BandUp is presented through a project note.

The GitHub profile README is maintained separately in [davletovb/davletovb](https://github.com/davletovb/davletovb).

