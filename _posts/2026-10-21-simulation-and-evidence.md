---
title: From a social question to inspectable evidence
description: How Social Emergence Lab uses agent-based models while keeping exploratory results and empirical claims apart.
permalink: /journal/simulation-and-evidence/
---
[Social Emergence Lab](https://github.com/davletovb/social-emergence-lab) is where I use agent-based models to ask sociological questions. It is separate from [Hiyal](https://github.com/davletovb/hiyal) on purpose: Hiyal is the engine, and the lab owns the questions, protocols, models and evidence.

The questions are about how individual interactions turn into collective patterns, and about a methodological question underneath: when can different explanations of the same pattern actually be told apart?

## Start with a known baseline

Experiment 001 uses a Pólya urn, a well-understood model of reinforcement in which success makes further success more likely. Because its behavior is known mathematically, the experiment tests the workflow rather than producing a discovery. The completed grid ran 10 paired societies across 18 configurations, with the event logs and archive validated independently and the derived results kept in Git.

## Reputation or opportunity?

Experiment 002 asks a sharper question. When a bad reputation locks someone out, and the reputation is later corrected, does the disadvantage keep regenerating, or does it simply fade as inherited opportunities wear off?

In the simulated societies studied so far, the answer leans toward fading. In 36 paired societies, a late gap in access remained, but almost all of it came from network links that existed before the correction. The part coming from new links and belief-driven choices was close to zero. A larger follow-up, 432 societies across nine conditions, found no condition in which the disadvantage was actively regenerated. The defensible reading is slow relaxation of an inherited network, not lasting lock-in. It is a negative result, and worth publishing as one.

## Which mechanism produced this?

Experiment 003 turns to cooperation. It builds six synthetic explanations for why people cooperate: material fines, stable preferences, conditional cooperation, sorting by type, learning about others' beliefs, and reinforcement by context. The question is which of them can be distinguished using only what an observer would see: who was matched with whom, the fines, the actions and the payoffs.

Part of the answer is already clear: some explanations contain others. Any pattern produced by fines alone can also be produced by each of the other five, so one observed history can legitimately have several explanations. The goal is therefore to recover the set of explanations a history is consistent with, not to force a single label. A first pilot of 24 simulated societies runs and replays, and there are candidate mathematical arguments that separate several pairs of explanations. Those arguments still need an independent check, and some pairs remain open.

## Keep the claim the size of the evidence

Deterministic replay shows what computation happened. Negative controls check whether a result depends on the mechanism being studied. Sensitivity analysis shows how much it depends on particular assumptions. None of this says anything about real societies: a result from simulated agents is a result about that model under those assumptions. Empirical claims need data about the world, and the lab keeps a separate review of what data could support them.

So everything so far is exploratory. Nothing has been preregistered, and there is no confirmatory or empirical finding yet.

## Open tasks

Some original evidence still needs permanent storage. Experiment 002's first and last rounds of raw data are published as release files, but Experiment 001's sealed archive and the Experiment 003 pilot sit in GitHub Actions storage, which expires. Their hashes are in Git, so a preserved copy can be checked against them.

[Protocols, experiments and evidence](https://github.com/davletovb/social-emergence-lab)
