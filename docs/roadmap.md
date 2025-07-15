# 🚧 Pester Build Roadmap

This roadmap breaks down the planned development of Pester across four key phases.

---

## 🔹 Phase 0 – Dev Foundations (✅ In Progress)

- ✅ Rails + Postgres setup
- ✅ Stimulus, Turbo, ActionCable
- ✅ Scaffold models: `User`, `Project`, `Task`, `Message`
- ⬜ Base styling (SCSS or Tailwind)
- ⬜ OpenAI service integration

---

## 🔹 Phase 1 – MVP: AI Chat + Task System

- ⬜ Real-time chat (Turbo + Cable)
- ⬜ Store GPT + user messages
- ⬜ GPT-4o response + task extraction
- ⬜ Create and display tasks from chat
- ⬜ Task status toggle (complete/incomplete)
- ⬜ ChatGatekeeper: block input if tasks uncompleted
- ⬜ Mode toggle (Support/Savage)

---

## 🔹 Phase 2 – Project Handling + Limits

- ⬜ Multiple projects per user
- ⬜ Confirm task completion before switching projects
- ⬜ Cooldown timers or forced reflection prompts

---

## 🔹 Phase 3 – Polish + Deploy

- ⬜ UI/UX refinements
- ⬜ GPT response formatting polish
- ⬜ Fly.io deployment
- ⬜ Local/session storage fallback
- ⬜ Full user authentication

---

## 🔗 Related

- [Architecture](./architecture.md)

_Last updated: July 15, 2025_
