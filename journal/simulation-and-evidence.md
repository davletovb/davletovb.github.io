---
layout: default
kind: note
title: From a social question to inspectable evidence
description: How Social Emergence Lab connects theory and agent-based models while keeping exploratory results and empirical claims distinct.
permalink: /journal/simulation-and-evidence/
category: Research note
note_date: "2026-10-21"
display_date: 21 October 2026
---
[Social Emergence Lab](https://github.com/davletovb/social-emergence-lab) is a workspace for investigating social questions through agent-based models. Its scope can grow across topics; current experiments concern reinforcement, inequality, reputation, and opportunity networks.

The work connects two interests: building reliable software and asking sociological questions carefully.

## Start with a mechanism

A model makes assumptions explicit. How do agents interact? What can they observe? How do past outcomes affect future opportunities? Which outcomes would change if one mechanism were removed?

Writing these choices down creates something that can be inspected and challenged. The lab keeps theory, protocols, model implementations, and evidence together. [Hiyal](https://github.com/davletovb/hiyal) supplies the generic simulation engine.

## Establish a baseline

The first experiment uses a known linear reinforcement model, a Pólya urn, as an exploratory benchmark. Its value lies in comparing implementation behavior with an established mathematical baseline and checking the research workflow.

The next candidate experiment examines reputation correction and opportunity-network repair. A Rust implementation has passed replay and negative-control engineering tests and a tiny exploratory batch. Its research design still has to earn stronger claims through further validation.

## Keep the evidence attached to the claim

Deterministic replay helps establish what computation took place. Negative controls help test whether a result depends on the mechanism being studied. Sensitivity analysis examines how much the result depends on particular assumptions.

Empirical validity requires additional evidence about the relationship between the model and the world. An outcome produced by simulated agents is a result about that model under those assumptions.

The current lab therefore presents its work as exploratory benchmarks and pilots. It has no confirmatory or empirical sociological finding to announce.

## A broader research direction

The long-term interest is in how interactions generate collective patterns: coordination, stratification, institutions, and change. Each question needs its own theoretical grounding, validation strategy, and account of what would count as evidence.

A reproducible experiment is a useful starting point for that discussion.

[Explore the research roadmap, protocols, and evidence →](https://github.com/davletovb/social-emergence-lab)
