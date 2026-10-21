---
title: Rebuilding Hiyal around reproducibility
description: Why my simulation library Neva became Hiyal, a Rust engine, and what reproducibility means inside it.
date: 2026-10-21 12:04:00 +0500
permalink: /journal/hiyal-rust/
---
[Hiyal](https://github.com/davletovb/hiyal) began as Neva, my Python library for multi-agent simulations with language models. It is now a new engine written in Rust. It is not a port: the Python version is frozen on an archive branch, and the Rust engine has its own design.

The goal is that an experiment can be run, inspected, resumed and checked, by me later or by someone else.

## What the engine makes explicit

An agent-based experiment hides many choices: the order in which agents act, which random draws they get, what they can observe, and when a model or tool is allowed to change the world. These choices shape the results, so Hiyal makes them part of the engine:

- deterministic scheduling and seeded randomness;
- an append-only log of committed and rejected events, with versioned checkpoints;
- keyed replay of recorded model responses, so a past run can be re-examined without calling the model again;
- parameter sweeps and paired counterfactual forks for research designs.

## Guardrails for model calls

Live model calls are off by default. When they are on, a run needs explicit token prices and a spending cap, tools need validators, and tools with side effects need a one-time approval. Agents can keep bounded structured memory, and a run can be exported as event summaries with prompts and world snapshots removed.

## Rust for running, open formats for analysis

The Rust library and CLI run experiments. Results come out as JSONL event logs, CSV metrics and a verified manifest, so the analysis can happen in whatever fits: Python, R, Julia or DuckDB. The engine itself needs no Python.

The same boundary keeps the engine generic. Research questions live in a separate repository, [Social Emergence Lab](https://github.com/davletovb/social-emergence-lab).

## Where it stands

The current stage covers restoring long event logs, restart tests with corrupt or hostile input, and release checks across platforms. Hiyal is still unpublished and its release gates are not yet certified. Any claim that the Rust engine is faster than the old Python one will wait for comparable measurements.

[Source and documentation](https://github.com/davletovb/hiyal)
