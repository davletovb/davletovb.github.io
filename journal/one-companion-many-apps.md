---
layout: default
kind: note
title: One companion, several AI applications
description: Seatline separates shared provider execution from the reading, writing, and browsing experiences built on top.
permalink: /journal/one-companion-many-apps/
category: Architecture note
note_date: "2026-10-21"
display_date: 21 October 2026
---
A reading assistant, a writing assistant, and a browser conversation tool have different jobs. They also need many of the same execution mechanics: discovering a provider, starting work, streaming output, cancelling it, and recovering from failures.

[Seatline](https://github.com/davletovb/seatline) collects those shared mechanics in a Rust runtime and native companion.

## A deliberate boundary

Seatline owns provider execution, bounded scheduling, streaming, and app-scoped access. Each application owns its prompts, conversations, interface, and product decisions.

That gives each tool a clear purpose:

- [Sharh](https://github.com/davletovb/sharh) helps a reader inspect a text and return to the source passages behind an analysis.
- [Lineleaf](https://github.com/davletovb/Lineleaf) focuses on writing assistance, conservative edits, and the user’s decision to accept or undo a change.
- [TabBeam](https://github.com/davletovb/TabBeam) provides an on-demand conversation around a tab or selection the user explicitly shares.

One companion can serve these applications while their product logic remains separate.

## Local coordination, explicit provider access

The companion provides a shared local execution boundary, including application authorization and scoped communication. It connects to supported provider runtimes.

Local coordination does not make every model local. Prompts sent through a hosted provider still leave the device. A useful interface should make that boundary understandable whenever the user chooses what to share.

## Measure the parts of the wait

A slow response can come from application startup, provider preparation, model generation, or the time between the final answer and process completion. Seatline includes phase timings and a benchmark harness so these can be examined separately.

Those measurements help identify which layer deserves attention. They also keep a runtime improvement distinct from a change in the model’s response time.

Seatline is pre-1.0. The applications remain in development, with their own installation, compatibility, and live-provider validation work.

[Explore Seatline’s architecture and companion →](https://github.com/davletovb/seatline)
