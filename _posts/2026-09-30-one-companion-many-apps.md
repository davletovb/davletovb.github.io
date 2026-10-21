---
title: One companion, several AI applications
description: Seatline separates shared provider execution from the reading, writing, browsing and reasoning tools built on top of it.
permalink: /journal/one-companion-many-apps/
---
Sharh, Lineleaf, TabBeam and Shoora do different jobs: reading, writing, asking about a web page, and comparing models. Underneath, they need the same plumbing: find an installed AI provider, start a request, stream the output, cancel it, and recover when something fails.

[Seatline](https://github.com/davletovb/seatline) is that plumbing, written once in Rust. It began as TabBeam's provider runtime and was extracted into its own repository.

## Where the boundary sits

Seatline runs the providers' own command-line tools (Codex, Claude Code, Gemini through Antigravity, and Grok) with the accounts the user is already signed in to. It handles processes, streaming, scheduling, private working files, and which app may use what. Each app keeps its own prompts, conversations, interface and product decisions.

- [Sharh](https://github.com/davletovb/sharh) is a reading assistant. It opens web pages, PDFs and local files and analyzes a chosen part of the text through four lenses: summary, structure, logic, and the thinking behind the text. Every point links back to the paragraph it comes from.
- [Lineleaf](https://github.com/davletovb/Lineleaf) is a writing assistant for corrections and rewrites. Nothing changes until you accept it, and every change can be undone.
- [TabBeam](https://github.com/davletovb/TabBeam) answers questions about the tab or selection you choose to share, and moves to a fuller view when the question grows.
- [Shoora](https://github.com/davletovb/conclave) (published as Conclave) has several models answer independently, then compare, debate, critique or synthesize through explicit workflows.

## One install, no open port

A single companion installation serves all of them. It opens no listening port: apps on the machine talk to it over a private local socket, and web apps such as Shoora reach it through an outbound, encrypted relay.

Local coordination does not make the models local. A prompt sent to a hosted provider still leaves the device, and the apps should make that clear when the user chooses what to share.

## Measure before optimizing

A slow answer can come from app startup, provider preparation, the model itself, or the delay between the final answer and the process exiting. Seatline records timings for each phase and has a benchmark harness for comparing runs, so effort goes to the layer that is actually slow.

## Where it stands

Seatline is pre-1.0, and apps pin it to an exact commit. Sharh has its readers, analysis engine and evaluation harness in place, with live quality checks still to do. Shoora's web app and its four providers work. TabBeam and Lineleaf are at the foundation stage.

[Seatline's architecture and companion](https://github.com/davletovb/seatline)
