---
layout: default
kind: project
title: TabBeam
description: On-demand AI for the browser tab or selection a user explicitly chooses to share.
permalink: /projects/tabbeam/
category: Browser assistance
status: In development
stack: Chrome MV3 · Rust · Seatline
source_url: https://github.com/davletovb/TabBeam
image: https://opengraph.githubassets.com/1/davletovb/TabBeam
---
## Purpose

Most browser questions are small. TabBeam is designed around **invoke → ask → read → continue**, with a fuller conversation view available when needed.

A lightweight Chrome extension owns browser context capture and the user interaction. The separate native integration owns conversation policy; [Seatline](/projects/seatline/) provides the common provider execution layer.

## Boundaries

TabBeam's design emphasizes explicit page and selection sharing instead of continuous capture. The README lists planning and foundation as its official stage, and the website does not promise a universally available packaged release.

[Source and status](https://github.com/davletovb/TabBeam) · [Architecture framework](https://github.com/davletovb/TabBeam/blob/main/docs/product/browser-ai-extension-framework.md)
