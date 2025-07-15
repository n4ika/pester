# 🛠️ Developer Notes – Pester

This file captures in-progress decisions, tech constraints, implementation notes, and planning considerations for the app’s architecture and AI behavior.

---

## 🛠️ Tech Constraints

- ✅ Using Devise for authentication.
- ✅ Will include OAuth login support (e.g., GitHub, Google).
- ✅ All GPT logic handled server-side (Rails), not client-side.
- ✅ Mode switching (Support/Savage) affects GPT prompt via injected templates.
- ✅ Project is intended for **solo use only** — no shared tasks, team roles, or invites.

---

## 🧭 Decisions Log

| Date       | Decision                                                                          |
| ---------- | --------------------------------------------------------------------------------- |
| 2025-07-14 | Committed to Stimulus + Turbo for chat + UI updates                               |
| 2025-07-15 | Using `ChatSession` only as placeholder — might fold into `Project` later         |
| 2025-07-15 | Default tone is Support Mode; Savage toggled manually or by context flag          |
| 2025-07-15 | `Merciless Mode` disables praise via an internal flag passed to GPT system prompt |

---

## 🧪 Prompt / Tone Experiments

_TBD._

---

## 🐛 Known Issues

_None currently identified._

---

## 🔄 Refactor Plans

_No planned refactors noted yet._

---

## 📈 Version Changelog

### ✅ v0.1 – Foundations

- Rails + Postgres installed
- Models: `User`, `Project`, `Task`, `Message` scaffolded
- Installed Turbo, Stimulus, ActionCable
- Added basic GPT integration via `OpenAIService`

---

_Last updated: July 15, 2025_
