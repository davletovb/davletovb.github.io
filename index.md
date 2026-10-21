---
layout: default
title: AI engineering and computational social science
description: Behruz builds intelligent systems and studies social systems through AI engineering, Rust infrastructure, and reproducible agent-based research.
home: true
body_class: home-page
---
<section class="hero" aria-labelledby="intro">
  <div>
    <p class="eyebrow">AI engineering · Computational social science</p>
    <h1 id="intro">Building intelligent systems.<br><em>Understanding social systems.</em></h1>
    <p class="hero-intro">I’m Behruz, an engineer and sociologist working across AI engineering, software infrastructure, and computational social science. I build practical tools and reproducible experiments to investigate how individual interactions produce collective outcomes.</p>
    <div class="hero-links"><a class="button" href="#work">Explore the work <span aria-hidden="true">↓</span></a><a class="text-link" href="/journal/">Research &amp; writing ↗</a></div>
  </div>
  <aside class="current-focus" aria-labelledby="focus-title">
    <p class="eyebrow">Current focus / October 2026</p>
    <h2 id="focus-title">From individual interactions to collective outcomes.</h2>
    <p>Building Hiyal’s Rust simulation engine and using it in Social Emergence Lab to explore questions about social emergence.</p>
    <div class="focus-links"><a href="https://github.com/davletovb/hiyal">The engine ↗</a><a href="https://github.com/davletovb/social-emergence-lab">The research ↗</a></div>
  </aside>
</section>

<section id="work" class="section" aria-labelledby="research-title">
  <header class="section-heading"><span class="section-number" aria-hidden="true">01 /</span><h2 id="research-title">Simulation &amp;<br>social research</h2><p class="section-description">Tools to make experiments reproducible. Research to connect social questions with models and inspectable evidence.</p></header>
  <div class="research-grid">
    <article class="project project-primary">
      <span class="status">Experimental Rust engine</span>
      <h3>Hiyal</h3>
      <p>A Rust engine for agent-based simulation and experimentation. Rebuilt from the earlier Neva project around reproducibility, explicit model boundaries, and research workflows.</p>
      <ul class="project-points"><li>Deterministic scheduling and event replay</li><li>A Rust API and CLI for running experiments</li><li>Parameter sweeps and paired counterfactual forks</li></ul>
      <div class="artifact-list" aria-label="Research output formats"><code>events.jsonl</code><code>metrics.csv</code><code>manifest.json</code></div>
      <div class="project-links"><a href="/projects/hiyal/">Read the case study →</a><a href="https://github.com/davletovb/hiyal">Source ↗</a></div>
    </article>
    <article class="project">
      <span class="status">Exploratory research</span>
      <h3>Social Emergence Lab</h3>
      <p>A research workspace for studying how social outcomes emerge from interactions between agents. The protocols, models, experiments, and evidence live alongside the questions that motivate them.</p>
      <p>Current work explores reinforcement, inequality, reputation, and opportunity networks. Hiyal provides the engine; the lab owns the research.</p>
      <div class="research-path" aria-label="Research process"><span>Theory</span><span aria-hidden="true">→</span><span>Simulation</span><span aria-hidden="true">→</span><span>Evidence</span></div>
      <p>Early experiments are exploratory benchmarks and pilots. They establish a basis for investigation rather than findings about human societies.</p>
      <div class="project-links"><a href="/projects/social-emergence-lab/">Research case study →</a><a href="https://github.com/davletovb/social-emergence-lab">Protocols &amp; evidence ↗</a></div>
    </article>
  </div>
</section>

<section class="section" aria-labelledby="ai-title">
  <header class="section-heading"><span class="section-number" aria-hidden="true">02 /</span><h2 id="ai-title">AI infrastructure<br>&amp; everyday tools</h2><p class="section-description">Reusable infrastructure beneath focused applications for reading, writing, browsing, and reasoning with multiple models.</p></header>
  <article class="runtime">
    <div><p class="eyebrow">Shared infrastructure · Pre-1.0</p><h3>Seatline</h3><p>A reusable Rust runtime and native companion for AI provider execution: process management, streaming, scheduling, and app-scoped access.</p><div class="project-links"><a href="/projects/seatline/">Architecture case study →</a><a href="https://github.com/davletovb/seatline">Source ↗</a></div></div>
    <div class="runtime-detail"><p class="eyebrow">One companion, multiple applications</p><div class="consumer-list">TabBeam · Lineleaf · Sharh</div><p>Each app owns its experience. Seatline handles shared provider execution.</p></div>
  </article>
  <div class="apps-grid">
    <article class="app"><div><h3>Sharh <span>Read with the source in view</span></h3><p>A browser reading assistant for examining summaries, arguments, and structure, with paragraph references that let you check the reading against the text.</p><small>In development · Reading &amp; analysis</small></div><a class="app-arrow" href="/projects/sharh/" aria-label="Read about Sharh">↗</a></article>
    <article class="app"><div><h3>Lineleaf <span>Clearer writing. Still your words.</span></h3><p>A browser writing assistant for corrections and rewrites, with explicit acceptance and undo, conservative editing, and attention to preserving meaning.</p><small>Development prototype · Writing</small></div><a class="app-arrow" href="/projects/lineleaf/" aria-label="Read about Lineleaf">↗</a></article>
    <article class="app"><div><h3>TabBeam <span>AI where you’re browsing</span></h3><p>Ask about the tab or selection you explicitly share, then continue the conversation in a fuller workspace when the question needs more room.</p><small>In development · Browser assistance</small></div><a class="app-arrow" href="/projects/tabbeam/" aria-label="Read about TabBeam">↗</a></article>
    <article class="app"><div><h3>Shoora <span>Currently published as Conclave</span></h3><p>A local-first workspace for comparing, debating, critiquing, and synthesizing responses from multiple AI models through explicit workflows.</p><small>In development · Multi-model reasoning</small></div><a class="app-arrow" href="/projects/shoora/" aria-label="Read about Shoora, published as Conclave">↗</a></article>
  </div>
</section>

<section class="section" aria-labelledby="learning-title">
  <header class="section-heading"><span class="section-number" aria-hidden="true">03 /</span><h2 id="learning-title">Learning<br>by doing</h2><p class="section-description">A place to apply adaptive interfaces and AI feedback to the sustained, ordinary work of learning.</p></header>
  <article class="learning">
    <div><span class="status">In development</span><h3>BandUp</h3><p>An IELTS preparation project spanning Listening, Reading, Writing, and Speaking. Diagnostics, focused practice, and review help turn broad goals into manageable daily sessions.</p><p>Studio explores a more structured, adaptive learning workspace on the same backend. The work brings together product design, assessment, and AI-assisted feedback.</p><div class="project-links"><a href="/projects/bandup/">Explore the learning project →</a><a href="/journal/building-bandup/">Design note ↗</a></div></div>
    <div class="learning-loop" aria-label="BandUp learning loop"><div class="loop-step"><span class="step-number">01</span><div><strong>Find the next useful step</strong><p>Use diagnostic signals to focus practice.</p></div></div><div class="loop-step"><span class="step-number">02</span><div><strong>Practice with purpose</strong><p>Work through targeted drills and full tasks.</p></div></div><div class="loop-step"><span class="step-number">03</span><div><strong>Return, review, adapt</strong><p>Connect feedback and review to the next session.</p></div></div></div>
  </article>
</section>

<section class="section" aria-labelledby="writing-title">
  <header class="writing-heading"><div><p class="eyebrow">Field notes / Engineering &amp; research</p><h2 id="writing-title">From the journal</h2></div><a class="text-link" href="/journal/">All entries ↗</a></header>
  {% include recent-notes.html %}
</section>

<section id="about" class="section about" aria-labelledby="about-title">
  <div><p class="eyebrow">A little context</p><h2 id="about-title">Engineering questions.<br>Sociological curiosity.</h2><p>I’m based in Central Asia. My work connects practical software development with questions about learning, coordination, institutions, and how technology shapes social life.</p></div>
  <div><p>Alongside building, I’m interested in legibility, algorithmic governance, and the history of information infrastructure, including Uzbek script reform. Mentoring students in Central Asia is another thread in that work.</p><p>The tools change with the problem. My current projects work across:</p><div class="toolbox" aria-label="Current tools"><span>Rust</span><span>TypeScript</span><span>Python</span><span>React</span><span>PostgreSQL</span><span>Cloudflare</span><span>SQL</span></div>
    <details class="earlier"><summary>Earlier work · 2020–2023</summary><ul><li><a href="https://github.com/davletovb/simulation-app">Simulation</a> — AI-assisted political simulation, 2023</li><li><a href="https://github.com/davletovb/intellibot">IntelliBot</a> — AI assistant for messaging platforms, 2023</li><li><a href="https://github.com/davletovb/clearsky">ClearSky</a> — air quality forecasting, 2022</li><li><a href="https://github.com/davletovb/prime">Prime</a> — document question answering, 2022</li><li><a href="https://github.com/davletovb/accord">Accord</a> — NLP-based Twitter user matching, 2020</li><li><a href="https://t.me/englishprep_bot">English tests</a> — a Telegram practice bot, 2020</li></ul></details>
  </div>
</section>
<section class="contact-strip" aria-label="Contact"><p>Working on a related question?</p><a href="mailto:hi@behruz.me">Let’s compare notes. ↗</a></section>

