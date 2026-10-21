---
layout: default
kind: project
title: Seatline
description: A shared Rust runtime and companion for provider execution across focused AI applications.
permalink: /projects/seatline/
category: AI infrastructure
status: Pre-1.0 · API may change
stack: Rust · IPC · CLI adapters · Benchmark harness
source_url: https://github.com/davletovb/seatline
diagram: /assets/diagrams/seatline.svg
diagram_alt: Diagram: Sharh, Lineleaf and TabBeam use a shared Seatline companion to reach AI provider runtimes.
image: https://opengraph.githubassets.com/1/davletovb/seatline
---
## The problem

Different AI-powered browser tools need the same lower-level capabilities: authorize an application, prepare a provider, start and cancel a run, stream a response, handle slow consumers, and recover from failures. Reimplementing them per product creates duplicated complexity.

Seatline centralizes those mechanics in a Rust runtime and shared native companion. Products remain responsible for their own conversations, prompts, editing semantics, and interface.

## One companion, different jobs

- **[Sharh](/projects/sharh/)** owns reading and source-grounded analysis.
- **[Lineleaf](/projects/lineleaf/)** owns writing suggestions and explicit edit acceptance.
- **[TabBeam](/projects/tabbeam/)** owns lightweight browser conversations.

The companion uses scoped local IPC and optional encrypted outbound relay connections. It does not make hosted model calls local: provider-dependent content sharing remains a product responsibility.

## Where performance work begins

Seatline includes phase timings and a reproducible benchmark harness. Rather than report a single unqualified response time, it distinguishes startup, readiness, provider initialization, generation and the time after the answer is received.

Fake-provider measurements establish reproducible runtime overhead; real-provider runs are opt-in and necessarily depend on provider and machine conditions.

## What is implemented—and what is not guaranteed

The repository describes its process and streaming primitives, provider adapters, bounded scheduling, app-scoped companion access and tests. It remains **pre-1.0**, is consumed at pinned Git revisions, and cannot be treated as a stable public API.

## Architecture and measurements

[Seatline source](https://github.com/davletovb/seatline) · [Companion setup](https://github.com/davletovb/seatline/blob/main/companion/README.md) · [Measurement methodology](https://github.com/davletovb/seatline/blob/main/docs/performance-measurement.md) · [Architecture note](/journal/one-companion-many-apps/)
