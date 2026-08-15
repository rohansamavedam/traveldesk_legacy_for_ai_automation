# TravelDesk Legacy

**Live Demo:** https://traveldesk-legacy-for-ai-automation.onrender.com

TravelDesk Legacy is a small Ruby on Rails flight-booking portal built as a **demo target for an AI computer-use automation project**.

The app itself contains no AI. It acts as a stand-in for an older internal enterprise application that must be operated through its user interface.

## What It Supports

The main workflow is:

```text
Flight Search
→ Flight Results
→ Select Flight
→ Traveler Information
→ Booking Review
→ Confirmation
```

The app uses deterministic fake flight data so different automation scenarios can be reproduced reliably.

## Demo Scenarios

| Scenario              | Test Case                  | Behavior                            |
| --------------------- | -------------------------- | ----------------------------------- |
| Normal booking        | JFK → SFO, 09/10/2026      | Successful booking flow             |
| No flights            | SFO → MIA, 09/20/2026      | No flights found                    |
| Sold out              | JFK → LAX, 09/12/2026      | Flight unavailable                  |
| Fare changed          | JFK → ORD, 09/14/2026      | Fare changes from $325 to $359      |
| Temporary error       | JFK → MIA, 09/16/2026      | First attempt fails, retry succeeds |
| Permission denied     | JFK → BOS, 09/18/2026      | Access denied                       |
| Invalid traveler data | Missing fields / bad email | Validation error                    |

These cases are designed to later test how the automation system handles:

* successful workflows
* business outcomes
* recoverable errors
* hard failures
* changing UI/business states

## Tech Stack

* Ruby 3.4
* Rails 8.1
* PostgreSQL
* ERB / server-rendered HTML
* Render

The UI is intentionally styled like an older internal business application.

## Run Locally

```bash
git clone https://github.com/rohansamavedam/traveldesk_legacy_for_ai_automation.git

cd traveldesk_legacy_for_ai_automation

bundle install

bin/rails db:create
bin/rails db:migrate
bin/rails db:seed

bin/rails server
```

Then open:

```text
http://localhost:3000
```

## Why This Project Exists

This repository is only the **legacy target application**.

A separate computer-use automation system will interact with TravelDesk through the UI, use an LLM to discover a workflow, save that workflow as a reusable capability, and later replay it deterministically without the LLM making every decision again.

```text
Computer-Use Automation System
            ↓
       Browser / UI
            ↓
      TravelDesk Legacy
```

All flight, traveler, and booking data in this application is fictional.
