# Pester

![Pester Banner](./app/assets/banner.svg)

**Pester** is your AI-powered task enforcer — a to-do list app with attitude.  
Built for the person who endlessly ideates, it helps you finish what you start.  
Chat with Orrin, your built-in gatekeeper, and get guilt-tripped into actually getting things done.

> This isn’t one more to-do app — finish what you start.

---

## 🧷 Badges

![Rails](https://img.shields.io/badge/Rails-7.1-red?logo=ruby-on-rails)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue?logo=postgresql)
![OpenAI](https://img.shields.io/badge/GPT--4o-powered-00FF00?logo=openai&labelColor=0D1117)
![PWA](https://img.shields.io/badge/PWA-ready-0D1117?logo=googlechrome&logoColor=00FF00)
![MIT License](https://img.shields.io/badge/license-MIT-lightgrey)
![Status](https://img.shields.io/badge/build-in%20progress-yellow)

---

## 🚧 Status

> **In early development.**  
> Initial commit includes project scaffolding, model creation, and database setup. Stay tuned as features like AI task enforcement and chat integration roll out. To follow along, check the [Roadmap](./docs/roadmap.md) and [Architecture](./docs/architecture.md).

---

## 📂 Docs Overview

| File                                                      | Description                                    |
| --------------------------------------------------------- | ---------------------------------------------- |
| [`tone-system.md`](./docs/tone-system.md)                 | Defines Orrin's voice rules and mode behaviors |
| [`orrin-personality.md`](./docs/orrin-personality.md)     | Core identity and philosophical framing        |
| [`prompt-templates.md`](./docs/prompt-templates.md)       | GPT prompt system messages by mode             |
| [`sample-interactions.md`](./docs/sample-interactions.md) | Realistic user/Orrin conversations             |
| [`ai-chat-guide.md`](./docs/ai-chat-guide.md)             | How GPT-4o integrates with the app             |
| [`architecture.md`](./docs/architecture.md)               | High-level data flow and backend structure     |
| [`roadmap.md`](./docs/roadmap.md)                         | Milestone checklist and build phases           |
| [`dev-notes.md`](./docs/dev-notes.md)                     | Implementation decisions and internal log      |

---

## ⚙️ Built With

- [Ruby on Rails 7.1](https://rubyonrails.org/)
- PostgreSQL
- Hotwire (Turbo + Stimulus)
- OpenAI GPT-4o API
- HTML / SCSS / JavaScript
- Hosted on [Fly.io](https://fly.io/)

---

## 📌 Features (Coming Soon)

- ✅ Manual and GPT-assisted task creation/editing
- 💬 Chat with [**Orrin**](./docs/orrin-personality.md), your AI accountability partner — available in Support Mode or Savage Mode
- 🔐 Secure user authentication (email/password)
- 📱 Mobile-first design (PWA)
- 🚫 Task blocking with gatekeeper messages instead of silence
- 🧠 Mode-based tone system that influences Orrin’s responses and behavior

> ⚠️ Features like deadlines, labels, and prioritization are planned for version 2.

---

### 🖼 Demo Preview

Coming soon: a sneak peek of Orrin’s interface, chat behavior, and real-time task flow.  
When it's ready, you'll see it here — with slow claps included.

---

## 🛠 Dev Log

- **July 15**: Initial commit. Project setup complete, models created and migrated.
- **July 15**: SCSS styling framework added (baseline UI setup).
- **July 14**: Stimulus, Turbo, ActiveCable installed and tested.
- **July 14**: Created models/controllers for User, Project, Task, Message, and ChatSession.
- **July 14**: Connected OpenAI API via `OpenAIService` wrapper.

---

## ⭐️ Follow the Project

- 👀 **Watch this repo** to get updates
- ⭐️ **Star it** if you're curious or want to support the build
- 🛠 **Contributions & feedback** welcome once core features are live
- 🗨️ **Discussions** tab will be enabled soon for open feedback

---

## 🧠 Philosophy

Pester isn’t just a productivity tool — it’s accountability with a personality. Powered by GPT-4o, [**Orrin**](./docs/orrin-personality.md) adapts to your working style: gently encouraging in Support Mode or blunt and sarcastic in Savage Mode. Either way, you're getting your tasks done — one way or another.

---

## 📄 License

This project is open source under the [MIT License](./LICENSE).

---

> “You don’t need motivation. You need momentum.” — Orrin
