---
title: From a social question to inspectable evidence
description: How Social Emergence Lab uses agent-based models while keeping exploratory results and empirical claims apart.
date: 2026-10-21 12:03:00 +0500
permalink: /journal/simulation-and-evidence/
---
[Social Emergence Lab](https://github.com/davletovb/social-emergence-lab) is where I use agent-based models to ask sociological questions. It is separate from [Hiyal](https://github.com/davletovb/hiyal) on purpose: Hiyal is the engine, and the lab owns the questions, protocols, models and evidence.

The questions are about how individual interactions turn into collective patterns. The current ones concern cumulative advantage: when past outcomes shape future opportunities, how unequal does a society become, and what can correct it?

## Start with a known baseline

Experiment 001 uses a Pólya urn, a well-understood model of reinforcement in which success makes further success more likely. Because its behavior is known mathematically, the experiment tests the workflow rather than producing a discovery. The completed grid ran 10 paired societies across 18 configurations, with the event logs and archive validated independently and the derived results kept in Git.

## Reputation or opportunity?

Experiment 002, still a candidate, asks a sharper question. When a bad reputation locks someone out, does it help more to correct the reputation or to repair their access to opportunity networks? The design crosses the two interventions in a paired 2×2. The first Rust version passed replay and negative-control tests. The next round of validation added independent probability checks, controls for network mixing and turnover, and graph benchmarks.

## Keep the claim the size of the evidence

Deterministic replay shows what computation happened. Negative controls check whether a result depends on the mechanism being studied. Sensitivity analysis shows how much it depends on particular assumptions. None of this says anything about real societies: a result from simulated agents is a result about that model under those assumptions. Empirical claims need data about the world, and the lab keeps a separate review of what data could support them.

So everything so far is exploratory. Nothing has been preregistered, and there is no confirmatory or empirical finding yet.

## One open task

The full original archive for Experiment 001 is sealed with SHA-256 hashes but currently stored as a GitHub Actions artifact, which expires in January 2027. The hashes are in Git, so a preserved copy can be checked against them, but the archive still needs permanent storage.

[Protocols, experiments and evidence](https://github.com/davletovb/social-emergence-lab)
