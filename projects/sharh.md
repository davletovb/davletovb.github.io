---
layout: default
kind: project
title: Sharh
description: A browser reading assistant that keeps analyses tied to the source passages they interpret.
permalink: /projects/sharh/
category: Reading & reasoning
status: In development · Live quality gates remain
stack: Browser extension · TypeScript · Seatline
source_url: https://github.com/davletovb/sharh
image: https://opengraph.githubassets.com/1/davletovb/sharh
---
## Purpose

Summaries often make documents easier to read but harder to verify. Sharh takes a different approach: interpret an article, PDF, or local document while keeping the source available for inspection.

## Workflow

The reader can select an analysis scope and use Summary, Structure, Logic or Thinking lenses. Paragraph references connect the interpretation to source text. Selection-based actions cover explanation, translation, logic and definition.

The tool uses [Seatline](/projects/seatline/) for provider execution. The reading experience and paragraph references remain product-specific.

## Status and evidence

The repo includes reader implementations, evaluation fixtures and instructions for building an unpacked Chrome extension. Live provider quality and owner acceptance remain open gates. These are documented capabilities under development, not claims of verified production readiness.

[Source and setup](https://github.com/davletovb/sharh) · [Evaluation documentation](https://github.com/davletovb/sharh/blob/main/docs/architecture/phase-one-evaluation.md)
