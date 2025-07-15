# 🧠 Pester Architecture Overview

This document outlines the high-level architecture of the Pester app, including frontend structure, backend models and services, and the AI chat pipeline.

---

## ⚙️ 1. Frontend (Client)

Built with standard Rails views, Turbo, and Stimulus for a reactive, mobile-ready interface.

### Components

- **Chat Interface**
  - `ChatBox`, `MessageList`, `InputArea`
- **Task List**
  - `ProjectDashboard`, `TaskList`, `TaskItem`
- **Controls**
  - `ProjectMenu`, `ModeToggle`

### Communication

- Turbo Streams and Stimulus handle UI updates
- Fetch/AJAX used for GPT interactions and gatekeeper logic

---

## 🗃️ 2. Backend (Rails + WebSocket)

### Models

- `User` – Basic auth (email/password)
- `Project` – Groups tasks and chat messages
- `Task` – Belongs to project, includes status enum
- `Message` – Stores user and GPT conversation
- `ChatSession` – Tracks chat-level state (e.g., mode, active blocks)

### Services

- `OpenAIService` – Wraps GPT-4o API calls
- `TaskExtractionService` – Parses GPT output for actionable tasks
- `ChatGatekeeperService` – Determines if new input or responses should be blocked

### Realtime

- Uses **ActionCable** to stream new messages and responses to the frontend

---

## 🤖 3. AI Layer

Orrin (GPT-4o) responses are dynamically shaped by:

- **Current user mode** (Support/Savage)
- **Task state**
- **Bonus flags** like Merciless Mode

Responses are processed by:

1. `ChatGatekeeperService` – Can halt chat if conditions aren't met
2. `TaskExtractionService` – Pulls actionable steps from GPT replies

---

## 🔁 4. Data Flow

```text
User Input
  ↓
Stimulus → Rails Controller → OpenAIService
                           ↘︎ ChatGatekeeper ↘︎ Block or Modify GPT Output
GPT Output → TaskExtractionService → Task.create or skip
  ↓
Turbo Stream → Chat + Task UI

---
```

## 🔗 Related

- [AI Chat Guide](./ai-chat-guide.md)
- [Roadmap](./roadmap.md)

_Last updated: July 15, 2025_
