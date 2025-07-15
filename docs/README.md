# 📚 Pester Documentation

Welcome to the internal documentation for **Pester**, the AI-powered task enforcer.  
This folder contains everything you need to understand Orrin's tone system, AI integration, architecture, and build roadmap.

> This isn’t one more to-do app — finish what you start.  
> [^1]

---

## 🧠 AI + Tone System

| File                                                 | Description                                                      |
| ---------------------------------------------------- | ---------------------------------------------------------------- |
| [`orrin-personality.md`](./orrin-personality.md)     | Core identity, voice philosophy, and user-facing attitude        |
| [`tone-system.md`](./tone-system.md)                 | Voice rules and tone guidelines for Support and Savage modes[^2] |
| [`prompt-templates.md`](./prompt-templates.md)       | System messages sent to GPT-4o for each tone[^3]                 |
| [`sample-interactions.md`](./sample-interactions.md) | Example conversations for calibration and behavior testing[^4]   |

---

## 🔧 Technical Implementation

| File                                     | Description                                                          |
| ---------------------------------------- | -------------------------------------------------------------------- |
| [`ai-chat-guide.md`](./ai-chat-guide.md) | GPT-4o integration setup, limitations, and behavior expectations[^5] |
| [`architecture.md`](./architecture.md)   | High-level app structure, Rails models, and data flow                |
| [`roadmap.md`](./roadmap.md)             | Feature checklist and build phase tracking[^6]                       |
| [`dev-notes.md`](./dev-notes.md)         | Internal decision log, known issues, and dev observations[^7]        |

---

## 🛠 How to Use This Folder

- Each file is standalone — scan what you need.
- All tone logic flows through Orrin’s [Support](./tone-system.md#support-mode) and [Savage](./tone-system.md#savage-mode) modes.
- `prompt-templates.md` and `ai-chat-guide.md` are key for development.
- `dev-notes.md` is your running log of decisions, constraints, and oddities[^8].

> Want to contribute later? Read the tone docs first. Then, ask Orrin if you're worthy.

---

## 🚧 Thinking About Contributing?

Right now, this project is in solo-builder mode.  
No team invites. No Slack noise. No motivational stickers[^9].

But if you’re reading this and feeling bold, here’s what Orrin would say:

> “You can fork the code. You can star the repo.  
> But unless your pull request contains precision, sarcasm, and tested logic...  
> _Keep it to yourself._”

Once core features are stable, this project may open up to outside collaborators. Until then:

- 👀 Watch the repo
- ⭐ Star it if you're intrigued
- 🔍 Study Orrin’s tone system if you're feeling brave

We’ll know when it’s time. Orrin will make it painfully clear.

---

[^1]: If you thought that line sounded motivational, read it again. Slower. It's not.
[^2]: Yes, there are tone rules. Chaos is not welcome here.
[^3]: Carefully engineered sarcasm doesn’t write itself.
[^4]: Yes, the clap is real. No, it won’t be enthusiastic.
[^5]: The part where GPT hallucinates? That’s not a bug. That’s an opportunity for judgment.
[^6]: Progress isn’t linear — but your excuses shouldn’t be circular either.
[^7]: You’ll thank yourself later for writing things down. Probably.
[^8]: Read it before you repeat a mistake. Or don’t. And get clapped at.
[^9]: We don’t do “crushing it” here. We do “actually doing it.”
