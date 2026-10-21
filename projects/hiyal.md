---
layout: default
kind: project
title: Hiyal
description: A Rust-native engine for reproducible agent-based experiments, with explicit execution and open research outputs.
permalink: /projects/hiyal/
category: Simulation infrastructure
status: Experimental · Unpublished
stack: Rust · CLI · JSONL · CSV
source_url: https://github.com/davletovb/hiyal
diagram: /assets/diagrams/hiyal.svg
diagram_alt: "Diagram: defined worlds and policies feed a Rust engine, which produces verified runs and open outputs."
image: https://github.com/user-attachments/assets/58c57917-5867-4b9a-ba50-847a2c7fe74d
---
## Why I built it

Agent-based experiments are easy to demonstrate and surprisingly difficult to reproduce. Results depend on how agents are scheduled, how random draws are assigned, what external models return, and whether the history can be inspected after the run.

Hiyal started as a Python project called Neva. The present Rust engine is a fresh implementation informed by that history, **not** a parity port. It separates execution from analysis: Rust API and CLI for running experiments; portable logs and metrics for inspection in Python, R, Julia, Rust, or DuckDB.

## How the engine works

- **Explicit world and policy interfaces.** Independent consumer crates can supply a typed model without editing the engine.
- **Deterministic scheduling and keyed replay.** Recorded model effects are replayed as recorded effects, not replaced with a new provider call.
- **Append-only events and checkpoints.** Runs can be restored and validated, including corrupt-input rejection.
- **Research workflows.** Parameter sweeps, paired counterfactual forks, restart recovery, and portable metrics are part of the Rust implementation.
- **Guarded external effects.** Optional live-provider paths are bounded by validation, budget and execution rules.

The open research outputs include `events.jsonl`, `metrics.csv`, and a verifiable `manifest.json`.

## Verification, not promises

The repository documents deterministic tests, restart handling, hostile-input cases, and a Rust-native measurement harness. The R5 release and fair cross-language performance qualification gates are **not certified**, so this is not being presented as a published production runtime or as demonstrably faster than the historical Python version.

The architecture is relevant to a broader question: can a simulation result be independently checked from its assumptions and history?

## Read the implementation

[Hiyal source and README](https://github.com/davletovb/hiyal) · [Rust SDK and CLI guide](https://github.com/davletovb/hiyal/blob/main/docs/r5-guide.md) · [Benchmark protocol](https://github.com/davletovb/hiyal/blob/main/benchmarks/r5-protocol.md) · [Migration note](/journal/hiyal-rust/)
