---
layout: default
kind: note
title: Rebuilding Hiyal around reproducibility
description: Moving from a Python library to a Rust engine, with a clear boundary between running experiments and analyzing their outputs.
permalink: /journal/hiyal-rust/
category: Engineering note
note_date: "2026-10-21"
display_date: 21 October 2026
---
[Hiyal](https://github.com/davletovb/hiyal), previously called Neva, is being rebuilt as a Rust engine for agent-based simulation and experimentation. The historical Python implementation remains an archived reference. The current engine has its own architecture and contracts.

The central goal is to make an experiment something that can be run, inspected, resumed, and checked.

## What the engine should make explicit

An agent-based experiment contains many choices: how agents are scheduled, which random draws they receive, what they observe, and when a model or tool can affect the world. Those choices influence the result. They belong in the engine’s contracts.

Hiyal’s current Rust work includes deterministic scheduling, append-only events, checkpoints, and keyed replay of recorded model effects. Research workflows add parameter sweeps and paired counterfactual forks. Replay makes it possible to inspect a recorded computation without assuming a fresh model call will reproduce the same answer.

## Rust for execution, open formats for analysis

The architecture gives the Rust API and CLI responsibility for running experiments. JSONL event logs and CSV metrics make the results available to separate analysis tools.

That leaves room to work in Python, R, Julia, Rust, or DuckDB according to the analysis. The engine itself requires no Python runtime or bindings. Parquet is a possible later export format; the current research outputs use JSONL and CSV.

This boundary also makes it easier to keep generic engine infrastructure in Hiyal while research-specific protocols and models live in [Social Emergence Lab](https://github.com/davletovb/social-emergence-lab).

## Where the work stands

Hiyal remains experimental and unpublished. Its repository records implementation guarantees, tests, benchmarks, and outstanding release qualification. The Rust rebuild is an architectural choice; any performance comparison needs comparable measurements.

The next useful evidence is a research workflow that can explain its inputs, reproduce its execution, and preserve its outputs. That is the standard guiding this rebuild.

[Explore Hiyal’s source and documentation →](https://github.com/davletovb/hiyal)
