---
layout: default
kind: project
title: Social Emergence Lab
description: A research workspace for investigating how individual interactions produce collective patterns—without confusing simulation with empirical proof.
permalink: /projects/social-emergence-lab/
category: Computational social science
status: Exploratory studies · No confirmatory finding
stack: Rust · Hiyal · CSV · Mathematical baselines
source_url: https://github.com/davletovb/social-emergence-lab
diagram: /assets/diagrams/social-emergence.svg
diagram_alt: Diagram: theory and analytical baselines feed paired experiments, then validated exploratory outputs.
image: https://opengraph.githubassets.com/1/davletovb/social-emergence-lab
---
## The research question

When individual outcomes alter future opportunities, how do local interactions affect the distribution of outcomes in a society? Related work explores how reputations, correction, and social network access affect trajectories under explicitly stated assumptions.

The lab keeps theory, formal models, experimental protocols, code, and evidence together. [Hiyal](/projects/hiyal/) provides generic experiment infrastructure, while this repository owns its social-science questions and designs.

## Experiment 001 · A known baseline

The first study uses a **Pólya urn**, an established mathematical model of cumulative reinforcement. The completed exploratory Hiyal grid contains 10 paired societies across 18 configurations, with derived summaries and trajectories retained in Git.

This checks whether the simulation and research workflow behave as expected against a known baseline. It is **not** a new sociological discovery, a preregistered confirmatory study, or evidence about human societies.

## Experiment 002 · Reputation and opportunity

The next candidate contrasts reputation correction with opportunity-network repair, including a paired factorial design. A Rust V0 implementation passed initial replay and negative-control checks; V1 validation adds probability checks, network-mixing and turnover controls, and bounded benchmarks.

The work remains exploratory. A plausible mechanism inside a model is not enough to establish its empirical importance.

## How the work can be challenged

The protocols specify baselines, controls, assumptions, validation and sensitivity checks. Research artifacts are traceable to a study rather than presented as an isolated chart.

One open evidence-preservation task remains: the complete original archive for Experiment 001 was retained as a GitHub Actions artifact with a documented expiry, while derived CSVs and verification hashes remain in Git. The preservation issue describes the outstanding permanent-storage work.

## Read the evidence

[Research repository](https://github.com/davletovb/social-emergence-lab) · [Experiment 001 results](https://github.com/davletovb/social-emergence-lab/tree/main/experiments/001-emergence-of-inequality/results/replicated-74000) · [Experiment 002 design and validation](https://github.com/davletovb/social-emergence-lab/tree/main/experiments/002-reputation-lock-in) · [Methodological note](/journal/simulation-and-evidence/)
