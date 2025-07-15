# Orrin: AI Chat Guide

This file outlines how Orrin’s AI-driven chat system works, how it integrates with task logic, and how mode-based tone is applied through GPT prompts.

---

## 🧱 Message Flow (MVP)

1. **User submits a message** in the chat interface
2. **Client sends the message** to the `/chat` controller via Turbo/Stimulus
3. **Rails server builds a system prompt** using:
   - User’s current Orrin mode (support/savage)
   - Optional bonus mode flags (e.g. `disable_praise`)
   - User input
4. **OpenAI API returns a response**, which is streamed back to the UI

---

## 🧠 Mode-Based Prompting

| Mode          | Prompt Template                                                           |
| ------------- | ------------------------------------------------------------------------- |
| **Support**   | Calm strategist. Guides with structure, logic, and encouragement.         |
| **Savage**    | Sarcastic, cutting, disappointed mentor. Uses dry wit.                    |
| **Merciless** | Same as Savage but praise is disabled via a flag (`disable_praise: true`) |

System prompts are pulled from `docs/prompt-templates.md`.

---

## 🧾 Chat Behavior Rules

- Orrin should **respond with action-oriented suggestions**, not motivational quotes (unless in Stoic Snap mode).
- If task input is vague or circular, Orrin may reject it.
  - e.g. “Work on stuff” → _“Vague goals create vague results. Try again.”_
- GPT responses should:
  - Include next-step framing
  - Avoid excessive verbosity
  - Respect tone rules (see `/docs/tone-system.md`)

---

## ⚙️ Chat Command Examples (Future Plans)

- `enable savage mode`
- `disable savage mode`
- `what’s my focus today?`
- `summarize my last three tasks`
- `break this down into subtasks`

---

## 🔮 Ideas for Phase 2+

- Session memory with short-term context
- Auto-prompt tuning based on user history
- Embedded task tracking via chat
- Summarized feedback based on task history
- Chat-generated task rollbacks (“Orrin, undo that.”)

---

_Last updated: July 15, 2025_
