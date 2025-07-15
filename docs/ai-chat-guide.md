# Orrin: AI Chat Guide

This file outlines how Orrin’s AI-driven chat system works, how it integrates with task logic, and how mode-based tone is applied through GPT prompts.

---

## 🧱 Flow Overview

1. User submits message via UI
2. Stimulus sends request → Rails controller
3. `ChatGatekeeperService` intercepts if needed
4. `OpenAIService` builds prompt + sends to GPT-4o sing:
   - User’s current Orrin mode (support/savage)
   - Optional bonus mode flags (e.g. `disable_praise`)
   - User input
5. `TaskExtractionService` parses task candidates
6. Turbo streams update chat + task UI

---

## 🔧 Modes & Prompts

| Mode          | Prompt Template                                                           |
| ------------- | ------------------------------------------------------------------------- |
| **Support**   | Calm strategist. Guides with structure, logic, and encouragement.         |
| **Savage**    | Sarcastic, cutting, disappointed mentor. Uses dry wit.                    |
| **Merciless** | Same as Savage but praise is disabled via a flag (`disable_praise: true`) |

> Prompts come from: [Prompt Templates](./prompt-templates.md)

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

## 🧾 Task Enforcement

- Orrin may block vague inputs:
  - _“Work on stuff” → “Try again. Vague goals create vague results.”_
- GPT responses must favor structure, not fluff.

---

## 🛠️ Future Feature

- Chat commands:
  - `enable savage mode`
  - `disable savage mode`
  - `what’s my focus today?`
  - `summarize my last three tasks`
  - `break this down into subtasks`
- Session memory with short-term context
- Auto-prompt tuning based on user history
- Embedded task tracking via chat
- Summarized feedback based on task history
- Chat-generated task rollbacks (“Orrin, undo that.”)

---

## 🔗 Related

- [Tone System](./tone-system.md)
- [Architecture](./architecture.md)

_Last updated: July 15, 2025_
