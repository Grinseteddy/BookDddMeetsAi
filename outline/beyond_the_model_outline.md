# Beyond the Model: AI-Assisted Domain-Driven Design
## Working Outline — April 2026
**Author:** Annegret Junker  
**Co-authors (Ch. 15):** Ferdinand Ade & Marco Emrich (planned, to be confirmed)

---

## Book Overview

### Title & Subtitle
**Beyond the Model: AI-Assisted Domain-Driven Design**

#### Subtitle Options
- Beyond the Model: AI-Assisted Domain-Driven Design across the Full Synergetic Blueprint
- Beyond the Model: Mastering AI-Assisted Domain-Driven Design
- Beyond the Model: How AI Transforms Domain-Driven Design from Ideation to Deployment
- Beyond the Model: Rethinking Domain-Driven Design in the Age of AI

### The Double Meaning of "The Model"
The title works on two levels simultaneously:
- **The AI model** (LLM) — we go beyond just prompting it
- **The domain model** (the DDD artifact) — we go beyond just modeling, into the full Synergetic Blueprint

Both readings are true. That ambiguity is a feature.

### Target Length
286 pages · 17 chapters · 20 references · 1 running example. Well within the 250–300 page target.

### Citation Style
APA style with footnotes.

### Target Audience
- Software architects, developers, and technical leads
- Familiar with DDD concepts but want to understand AI augmentation
- Have read Mastering Domain-Driven Design or DDD Toolbox (not required but rewarded)
- Frustrated by vague AI coding advice; want a structured, process-driven approach
- Want empirical evidence, not hype

### Positioning
A companion to Mastering Domain-Driven Design (BPB, 2025) and DDD Toolbox (BPB, 2025). Where those books establish the Synergetic Blueprint, this book shows how AI enriches every step — from North Star to running software. Deliberately short: a practitioner reads this in a weekend and applies it on Monday.

---

## The Synergetic Blueprint — Correct Step Numbering

**Strategic Design — Ideation (Steps 1–3)**
- Step 1: North Star
- Step 2: Business Plan
- Step 3: Capabilities

**Strategic Design — Requirements (Steps 4–8)**
- Step 4: Business Requirements (Domain Storytelling)
- Step 5: Ubiquitous Language (Visual Glossary)
- Step 6: Bounded Contexts (EventStorming Overview)
- Step 7: Ubiquitous Language refined (Enhanced Visual Glossary)
- Step 8: User/API Journey (Event Modeling)

**Strategic Design — Solution Design (Step 9)**
- Step 9: Services & APIs (Context Map, Bounded Context Canvas, Architecture patterns)

**Tactical Design — Acceptance Criteria & Testing (Step 10)**
- Step 10: Testcases (Example Mapping)

**Tactical Design — Solution Design (Steps 11–14)**
- Step 11: Domain Model (Enhanced Visual Glossary, Aggregates, Entities, Value Objects)
- Step 12: REST API Events (API Product Canvas, OpenAPI, AsyncAPI)
- Step 13: Service (EventStorming Detail, Architecture Communication Canvas)
- Step 14: Repository (Enhanced Visual Glossary, Ubiquitous Language)

**Total: 14 steps**

---

## Table of Contents

| Part | Chapter | Pages |
|---|---|---|
| **Part I — Foundations** | | pp. 1–52 |
| | Ch. 1 — The Synergetic Blueprint Revisited | pp. 1–18 |
| | Ch. 2 — AI as a Design Partner | pp. 19–36 |
| | Ch. 3 — Human-AI Collaboration Principles | pp. 37–52 |
| **Part II — Ideation Steered by AI** | | pp. 53–85 |
| | Ch. 4 — North Star and Business Planning with AI | pp. 53–69 |
| | Ch. 5 — Mapping Capabilities Supported by AI | pp. 70–85 |
| **Part III — AI Supports Requirement Gathering** | | pp. 86–152 |
| | Ch. 6 — Domain Storytelling and AI | pp. 86–102 |
| | Ch. 7 — AI as Referee when Building the Ubiquitous Language | pp. 103–118 |
| | Ch. 8 — EventStorming with AI | pp. 119–135 |
| | Ch. 9 — AI-Augmented Event Modeling & API Journeys | pp. 136–152 |
| **Part IV — AI in Solution Design** | | pp. 153–203 |
| | Ch. 10 — Context Mapping Supported by AI | pp. 153–169 |
| | Ch. 11 — AI-Driven Architecture Decisions | pp. 170–186 |
| | Ch. 12 — Services, APIs, and the Bounded Context Canvas | pp. 187–203 |
| **Part V — Tactical Design & Implementation Using AI** | | pp. 204–273 |
| | Ch. 13 — Domain Model Co-creation with AI | pp. 204–220 |
| | Ch. 14 — AI-Enhanced REST API and Event Design | pp. 221–236 |
| | Ch. 15 — From Example Mapping to EXACT Coding | pp. 237–256 |
| | Ch. 16 — Service and Repository Implementation Using AI | pp. 257–273 |
| **Summary and Outlook** | Ch. 17 — Summary and Outlook | pp. 274–286 |

---

## The Running Example: CookWithUs

A recipe-sharing platform that grows in complexity across the book. First established in two published blog posts (Junker, 2026a; 2026b). Already has three empirically tested prototype iterations.

- **Actors:** Cook, Anonymous User, Supplier
- **Key concepts:** Recipe, Rating, ShoppingList, Ingredient, Making/HowTo
- **Core business rules:** A Cook cannot rate their own Recipe. A Recipe must have a unique Title.
- **Initial bounded contexts:** Register, Sharing, Rating
- **Later contexts:** Ingredient Sourcing, Supplier Integration

---

## Part I — Foundations
**Chapters 1–3 | pp. 1–52**

Sets the contract with the reader — the voice, the philosophy, and the frame through which every subsequent Blueprint step gets reread.

---

### Chapter 1 — The Synergetic Blueprint Revisited (pp. 1–18)

**Core argument:** The Synergetic Blueprint is a proven process from business intent to working software. You don't need the previous books — but you do need to understand it as a living collaboration, not a waterfall checklist. That understanding is what makes AI augmentation meaningful rather than cosmetic.

| Section | Pages | Content |
|---|---|---|
| *(The Monday Morning Problem)* | pp. 1–2 | Hook: the workshop Miro board gathers dust by Monday. The gap between understanding a domain and delivering software that reflects it. The Blueprint exists to close that gap. |
| The Synergetic Blueprint in a Nutshell | pp. 3–7 | Four zones (Ideation, Requirements, Solution Design, Tactical Design), fourteen steps, iterative framing. The Blueprint is a reading order, not an execution order. |
| The Blueprint Flow | pp. 8–10 | Full-page diagram of all 14 steps across four zones, with CookWithUs artifacts named at each step. The map legend the reader carries through the whole book. |
| AI Augments the Blueprint | pp. 11–15 | Three CookWithUs previews of AI augmentation. The book's central claim: AI doesn't replace the Blueprint — it reveals where the Blueprint was always waiting for richer input. |
| Meet CookWithUs | pp. 16–17 | Formal introduction of the companion domain. Actors, work objects, business rules, initial bounded contexts. Grounded in two published blog posts. |
| *(How to Read This Book)* | p. 18 | Navigation guide. Each chapter: Blueprint step → AI augmentation → CookWithUs illustration → references. Pointers to previous books for deeper dives. |

**Diagrams:** Blueprint flow diagram (full page, p. 9) · CookWithUs domain overview (half page, p. 16)  
**Footnotes:** ¹ ⁶ ⁷ ⁹ ¹⁰

---

### Chapter 2 — AI as a Design Partner (pp. 19–36)

**Core argument:** The most dangerous way to use AI in software design is as a search engine with autocomplete. The most powerful way is as a structured thinking partner — grounded in Blueprint artifacts, honest about its limits, and always subordinate to human domain judgment.

| Section | Pages | Content |
|---|---|---|
| *(The Broken Promise)* | pp. 19–20 | Most teams have tried LLMs for code generation. Syntactically correct, domain-blind. The problem isn't the model — it's the missing context. Reframes the reader's existing frustration as a solvable problem. |
| Context Is Everything | pp. 21–25 | What LLMs actually do at a working level — pattern completion over vast training data. Why structured Blueprint artifacts are unusually good LLM input. Durable across model generations. |
| AI as Validator, Accelerator, and Provocateur | pp. 26–30 | The three roles: Validator (CookWithUs prototype within the workshop session, surfacing the race condition); Accelerator (three-iteration pipeline, measurably better output); Provocateur (candidate events, first-draft Wardley Maps, alternative decompositions as provocations). |
| When AI Gets It Wrong | pp. 31–33 | Hallucinated domain plausibility. No access to organizational politics. Optimizes for coherence, not correctness. The self-rating rule that vanished from CookWithUs Prototype v1 is the canonical example. |
| Giving AI the Right Context | pp. 34–35 | The three-ingredient formula: Domain Story + Visual Glossary + style reference. How to structure prompts around Blueprint step outputs. Why telling AI what not to build matters as much as what to build. |
| *(AI as the Most Knowledgeable Junior Colleague)* | p. 36 | The mental model the reader carries into every chapter: brilliant at patterns, blind to context. Your job is to provide the context. |

**Diagrams:** Three AI roles mapped to Blueprint steps (half page, p. 26) · Three-ingredient prompt formula (half page, p. 34)  
**Footnotes:** ¹ ⁹ ¹⁰

---

### Chapter 3 — Human-AI Collaboration Principles (pp. 37–52)

**Core argument:** AI augments the Blueprint only if humans stay in control of it. Five principles govern every AI-assisted modeling session — not as restrictions, but as the habits that separate teams that get better with AI from teams that just go faster in the wrong direction.

| Section | Pages | Content |
|---|---|---|
| *(The Risk Nobody Talks About)* | pp. 37–38 | The real danger isn't that AI gets things wrong — it's that it gets things wrong convincingly. A plausible but incorrect domain model is harder to fix than a blank canvas. |
| Experts First, Always | pp. 39–42 | The business expert who knows a rule exists is always right over the AI that learned from the internet. Domain knowledge lives in people, not in prompts. AI can surface candidates; only experts can confirm them. |
| Artifacts Are Your Prompts | pp. 43–45 | The quality of AI output is directly proportional to the quality of Blueprint artifacts provided as context. The three-iteration CookWithUs pipeline proves this empirically. |
| Validate Before You Propagate | pp. 46–47 | AI output that enters a Blueprint artifact without human review becomes organisational debt. One wrong term in the Visual Glossary pollutes every downstream artifact. |
| The Devil's Advocate in the Room | pp. 48–49 | The best use of AI in a modeling session is to argue the other side. CookWithUs illustration: AI challenges the Register/Sharing boundary and exposes a hidden coupling. |
| Keeping the Human in the Loop | pp. 50–51 | Every numbered Blueprint step is a human decision gate. AI can inform steps 1–14; it cannot own any of them. |
| *(Your AI Collaboration Cheat Sheet)* | p. 52 | A compact one-page reference: the five principles mapped to each Blueprint step, showing which AI role applies where. Designed to be printed and pinned up during modeling sessions. |

**Diagrams:** The collaboration cheat sheet (full page, p. 52)  
**Footnotes:** ¹ ⁹ ¹⁰

---

## Part II — Ideation Steered by AI
**Chapters 4–5 | pp. 53–85**

Blueprint steps 1–3. From blank canvas to prioritized capabilities with domain boundaries sketched. The Manager leads; AI collapses the cold start without replacing the judgment that shapes the result.

---

### Chapter 4 — North Star and Business Planning with AI (pp. 53–69)

**Core argument:** The hardest moment in any product initiative is the first one — when the vision exists only as a feeling and the blank canvas offers no foothold. AI collapses that cold start without replacing the human judgment that has to shape the result.

| Section | Pages | Content |
|---|---|---|
| *(The Hardest Question in the Room)* | pp. 53–54 | The blank canvas problem: everyone knows something needs to be built, nobody can yet articulate what. AI doesn't answer the question — it gives the team something to react to. |
| AI-Assisted Ideation | pp. 55–59 | Brainstorming and Brainwriting with AI as an always-available participant. AI generates divergent North Star candidates as provocations. CookWithUs: the team selects and refines one: "Empower home cooks to share, discover, and bring recipes to life — from inspiration to table." |
| From Description to Business Model | pp. 60–64 | AI generates a first-draft Business Model Canvas from the North Star. CookWithUs: the Supplier partnership block was missing from the AI draft — the team adds it, and it becomes a defining strategic choice. |
| Impact Mapping and AI | pp. 65–67 | AI-generated Impact Map for CookWithUs. AI tends to over-generate deliverables — the discipline of removing is as important as adding. How the Impact Map feeds directly into the Capability Map in Chapter 5. |
| *(What You Now Have)* | pp. 68–69 | The three artifacts closing steps 1–2: validated North Star, Business Model Canvas, Impact Map. Save these artifacts — they are your prompts for the rest of the book. |

**Diagrams:** AI-assisted North Star selection (half page, p. 56) · CookWithUs Business Model Canvas first draft vs. refined (full page, p. 62)  
**Footnotes:** ¹ ⁶ ¹⁹

---

### Chapter 5 — Mapping Capabilities Supported by AI (pp. 70–85)

**Core argument:** Capabilities are the bridge between business intent and software structure. Getting them wrong at step 3 means everything downstream is misaligned. AI generates candidate capabilities fast — the team's job is to prioritize ruthlessly and draw the first domain boundaries.

| Section | Pages | Content |
|---|---|---|
| *(From Vision to Capabilities)* | pp. 70–71 | The translation nobody teaches: how does "empower home cooks" become a list of things the software needs to do? AI makes the translation faster — but the team must own the result. |
| The Capability Map as a Starting Point | pp. 72–76 | AI generates a first-draft Capability Map from the Business Model Canvas and Impact Map. CookWithUs: AI proposes twelve capabilities; six survive the first cut. |
| Commodity or Differentiator? | pp. 77–80 | AI drafts a Wardley Map from the surviving capabilities. CookWithUs: Recipe Management and Cook Identity plot as custom-built; Payments and Notifications plot as commodity. |
| Where Capabilities Become Contexts | pp. 81–84 | AI suggests initial domain boundaries from the Capability Map. CookWithUs: three initial bounded contexts confirmed plus two emerging ones. |
| *(Capabilities Prioritized, Requirements Ahead)* | p. 85 | The artifact that closes step 3: a prioritized Capability Map with domain boundaries sketched. |

**Diagrams:** CookWithUs Capability Map (full page, p. 73) · AI-drafted Wardley Map with team annotations (full page, p. 78)  
**Footnotes:** ¹ ⁶ ⁷ ¹⁸ ¹⁹

---

## Part III — AI Supports Requirement Gathering
**Chapters 6–9 | pp. 86–152**

Blueprint steps 4–8. From Domain Storytelling through Ubiquitous Language, EventStorming, and Event Modeling to a validated API contract. Empirically grounded in two published blog posts and three CookWithUs prototype iterations.

---

### Chapter 6 — Domain Storytelling and AI (pp. 86–102)

**Core argument:** Domain Storytelling already produces the best requirements artifacts available. AI adds two things: it collapses the cold start inside the session, and it turns the artifacts into a running prototype before the workshop ends — shifting participants from narrators to critics.

| Section | Pages | Content |
|---|---|---|
| *(The Room Where Requirements Live)* | pp. 86–87 | The workshop dynamic: domain experts narrate, the moderator captures, the board fills up. AI enters this room as an additional presence with no organizational agenda. |
| Actors, Work Objects, Activities | pp. 88–90 | Domain Storytelling in a nutshell. CookWithUs Domain Story: six activities, two actors, one story. The Visual Glossary emerges alongside it. |
| AI as the Domain-Blind Participant | pp. 91–93 | AI generating candidate activities the team missed, surfacing implicit assumptions. The bike-sharing example: the race condition visible within two minutes of showing a prototype. |
| Stories as Specifications | pp. 94–98 | The three-ingredient formula: Domain Story + Visual Glossary + style reference → running prototype. CookWithUs Prototype v1: what the AI got right, what it got wrong, and why the gaps are more valuable than the hits. |
| The First Boundaries Emerge | pp. 99–101 | AI proposes first Bounded Context candidates from the Domain Story and Visual Glossary. CookWithUs: Register, Sharing, Rating emerge clearly. |
| *(From Story to Glossary)* | p. 102 | The artifacts that close step 4: Domain Story, first Visual Glossary, Bounded Context candidates. |

**Diagrams:** CookWithUs Domain Story (full page, p. 89) · Three-ingredient formula applied to CookWithUs (half page, p. 95)  
**Footnotes:** ⁴ ⁹ ¹⁰

---

### Chapter 7 — AI as Referee when Building the Ubiquitous Language (pp. 103–118)

**Core argument:** The Ubiquitous Language is not a glossary you write once — it is a living standard you maintain across every modeling session. AI is uniquely suited to spotting the drift that humans miss because they're too close to it.

| Section | Pages | Content |
|---|---|---|
| *(The Word That Breaks Everything)* | pp. 103–104 | A single term used differently in two bounded contexts quietly propagates through every downstream artifact. CookWithUs: "Making" becomes "HowTo" — a small rename with large downstream consequences. |
| Making the Language Visible | pp. 105–109 | The Visual Glossary: not a dictionary but a relationship map. AI generates a first-draft glossary from the Domain Story — the team validates every entry and every relationship. |
| AI as the Language Watchdog | pp. 110–113 | AI detecting drift, flagging ambiguity, suggesting disambiguation. CookWithUs: AI flags that "Meal" is used both as a concept in the Domain Story and as an enum value in the refined glossary. |
| Deeper with Every Session | pp. 114–117 | The Enhanced Visual Glossary: what changes after EventStorming. CookWithUs: Cook gains Name and GivenName. Recipe gains Title, Servings, Meal enum, Diet enum. ShoppingList appears as an entirely new concept. Making is renamed HowTo. |
| *(A Living Standard)* | p. 118 | The Ubiquitous Language is never done — it grows with every session, every EventStorming board, every API contract. AI helps maintain it; humans own it. |

**Diagrams:** CookWithUs Visual Glossary v1 (half page, p. 107) · Enhanced Visual Glossary after EventStorming (half page, p. 115)  
**Footnotes:** ⁴ ⁹ ¹⁰

---

### Chapter 8 — EventStorming with AI (pp. 119–135)

**Core argument:** EventStorming is the most powerful bounded context discovery tool available — but the blank board is intimidating and the cold start is slow. AI seeds the board with candidates that give the team something to challenge immediately, without replacing the collaborative sense-making that makes EventStorming work.

| Section | Pages | Content |
|---|---|---|
| *(EventStorming and the Cold Start Problem)* | pp. 119–120 | The blank EventStorming board: nobody knows where to begin. AI gives the team a first draft to react to within minutes. |
| Seeding the Storm | pp. 121–125 | Big Picture EventStorming with AI generating candidate domain events, commands, and policies. CookWithUs: AI proposes CookRegistered, RecipeShared, RecipeRated, PicturesTaken, ShoppingListCreated, IngredientOrdered. The self-rating policy appears explicitly — AI encodes it correctly in every subsequent artifact. |
| AI Validates the Boundaries | pp. 126–129 | AI confirms Register, Sharing, and Rating; surfaces Ingredient Sourcing as a genuine separate context. MealCooked and RecipeTried are explicitly marked out of scope. |
| What the Board Knows That Nobody Said | pp. 130–134 | Hidden business rules visible only when the full event sequence is laid out. CookWithUs: the uniqueness constraint on Recipe Title appears as a policy sticky. AI surfaces three additional candidate rules — two confirmed, one rejected. |
| *(From Storm to Context Map)* | p. 135 | The EventStorming board closes step 6 with three confirmed bounded contexts, two emerging ones, and explicit policies. The board is not a deliverable — it is the evidence from which every subsequent design decision is derived. |

**Diagrams:** CookWithUs EventStorming board overview (full page, p. 122) · Bounded Context boundaries overlaid on the board (half page, p. 127)  
**Footnotes:** ⁴ ⁵ ⁹ ¹⁰

---

### Chapter 9 — AI-Augmented Event Modeling & API Journeys (pp. 136–152)

**Core argument:** Event Modeling bridges the EventStorming board and working software. AI drafts the model, the user journey, and the API spec in sequence, with the team validating at every step.

| Section | Pages | Content |
|---|---|---|
| *(The Gap Between Discovery and Delivery)* | pp. 136–137 | The EventStorming board is full of insight. The development team is waiting for a spec. AI closes that gap by drafting the model directly from the board. |
| AI Drafts the Event Model | pp. 138–142 | AI generates swimlanes, commands, events, and read models for CookWithUs. Every event on the board must appear in the model; every model element must trace back to the board. |
| Screen Flows from Domain Stories | pp. 143–146 | AI maps Domain Stories to screen flows. CookWithUs: six-activity Domain Story becomes four screens. Every field, every label traces back to a sticky note or pictogram. |
| From Events to API | pp. 147–151 | The Event Model drives the OpenAPI spec. AI generates register.yaml, sharing.yaml, rating.yaml. The self-rating rule appears as a 403 response. Bounded contexts share IDs, not schemas. |
| *(From Model to Contract)* | p. 152 | Step 8 closes with three OpenAPI specs, a validated Event Model, and screen flows for every bounded context. |

**Diagrams:** CookWithUs Event Model swimlanes (full page, p. 140) · Three bounded context API specs overview (half page, p. 149)  
**Footnotes:** ⁴ ⁵ ⁸ ⁹ ¹⁰

---

## Part IV — AI in Solution Design
**Chapters 10–12 | pp. 153–203**

Blueprint step 9. From Context Map to complete Solution Design artifact set — integration patterns, architecture decisions, service definitions, API contracts, and event schemas. Every artifact traces back to the EventStorming board and the Visual Glossary.

---

### Chapter 10 — Context Mapping Supported by AI (pp. 153–169)

**Core argument:** The Context Map is where bounded contexts meet the real world. The integration pattern chosen at this step determines how much autonomy each team has and how much coupling the system carries. AI makes the pattern options explicit and the trade-offs visible.

| Section | Pages | Content |
|---|---|---|
| *(Where the Boundaries Touch)* | pp. 153–154 | Every bounded context exists in relation to others. AI makes the choice deliberate by naming the options before the team defaults to the path of least resistance. |
| What the Map Reveals | pp. 155–159 | The Context Map as a strategic document. CookWithUs: five contexts mapped. AI generates a first-draft Context Map revealing power dynamics — the Supplier context is upstream; the Sharing context must conform or protect itself. |
| Choosing the Right Pattern | pp. 160–163 | AI recommends integration patterns based on bounded context characteristics. CookWithUs: Open Host Service for Supplier → Sharing, Anti-Corruption Layer for Sharing → Supplier, Conformist for Rating → Sharing. |
| AI Fills the Bounded Context Canvas | pp. 164–168 | AI populates a first-draft Bounded Context Canvas for each CookWithUs context. The canvas surfaces what the team doesn't yet know as clearly as what it does. |
| *(From Design to Implementation)* | p. 169 | The completed Context Map and five Bounded Context Canvases become the architectural contract between teams. |

**Diagrams:** CookWithUs Context Map (full page, p. 157) · Supplier Integration Bounded Context Canvas (half page, p. 166)  
**Footnotes:** ¹ ⁶ ⁷ ¹¹

---

### Chapter 11 — AI-Driven Architecture Decisions (pp. 170–186)

**Core argument:** Architecture decisions are expensive to reverse. AI doesn't make them for you — it makes the trade-offs explicit before you commit, surfaces the consequences you didn't consider, and documents the reasoning so the decision survives the team that made it.

| Section | Pages | Content |
|---|---|---|
| *(Where Architecture Gets Real)* | pp. 170–171 | Architecture patterns are well-documented. What's poorly documented is the reasoning behind choosing one over another in a specific context. CookWithUs: three decisions to make. |
| Modular Monolith as the Default | pp. 172–176 | AI as a check on premature distribution. AI models both options and makes the operational complexity of the distributed option visible. The team chooses the monolith with explicit seams. How to use AI to generate an Architecture Decision Record. |
| Commands, Queries, and AI | pp. 177–180 | When CQRS and Event Sourcing make sense — and when AI should push back. CookWithUs: AI recommends Event Sourcing for Sharing, pushes back on Register. |
| Choreography or Orchestration? | pp. 181–185 | AI maps the Ingredient Ordering event flow and proposes choreography. The team challenges the failure scenario — AI models it and the team adds a thin orchestrator for the Supplier step only. |
| *(Decisions Documented)* | p. 186 | Three Architecture Decision Records capturing context, options, decision, and consequences. AI drafts each; the team owns the content. |

**Diagrams:** Modular Monolith vs. distributed comparison (full page, p. 174) · Ingredient Ordering choreography with failure path (half page, p. 183)  
**Footnotes:** ¹ ⁶ ¹¹ ¹² ¹³

---

### Chapter 12 — Services, APIs, and the Bounded Context Canvas (pp. 187–203)

**Core argument:** Solution Design closes when every bounded context has a service definition, an API contract, and a documented event schema. AI generates all three from the artifacts already produced — the team's job is to validate, refine, and sign off.

| Section | Pages | Content |
|---|---|---|
| *(From Decisions to Deliverables)* | pp. 187–188 | The architectural decisions are made. AI generates first drafts of service boundaries, API contracts, and event schemas; the team validates against the EventStorming board, Visual Glossary, and Context Map. |
| Services from the Context Map | pp. 189–193 | AI generates service definitions for each CookWithUs bounded context. Sharing owns Recipe and ShoppingList. Rating owns Rating and references Recipe only via recipeId. Register owns Cook identity with no dependencies. |
| The API Product Canvas | pp. 194–197 | AI populates a first-draft API Product Canvas for the Sharing API. The canvas surfaces missing rate limits, versioning strategy, and error taxonomy. Cross-reference to Crafting Great APIs with Domain-Driven Design. |
| Events as Contracts | pp. 198–202 | AsyncAPI for CookWithUs domain events. Every field traces back to a sticky note. The self-rating policy appears as a validation rule in the RecipeRated schema. |
| *(The Full Artifact Set)* | p. 203 | Step 9 closes with the complete Solution Design. Every artifact traces back to a Domain Story, a sticky note, or a Visual Glossary entry. |

**Diagrams:** CookWithUs service definitions overview (half page, p. 190) · RecipeShared AsyncAPI schema (half page, p. 200)  
**Footnotes:** ¹ ⁶ ⁷ ⁸ ¹⁴ ¹⁵

---

## Part V — Tactical Design & Implementation Using AI
**Chapters 13–16 | pp. 204–273**

Blueprint steps 10–14. From Domain Model to running, tested, documented software. Every upstream modeling decision either pays off here or reveals its gaps.

---

### Chapter 13 — Domain Model Co-creation with AI (pp. 204–220)

**Core argument:** The Domain Model is where strategy becomes structure. Aggregates, Entities, and Value Objects are the mechanism by which business rules get enforced in code. AI accelerates their discovery; only domain experts can validate their correctness.

| Section | Pages | Content |
|---|---|---|
| *(Where Strategy Becomes Structure)* | pp. 204–205 | The jump from bounded contexts and APIs to actual code structures is where many DDD projects lose precision. AI makes the first pass fast — the team makes it correct. |
| Finding the Aggregates | pp. 206–210 | AI identifies aggregate candidates from the EventStorming board and Visual Glossary. CookWithUs: Recipe as primary aggregate, Cook as second, Rating as third. How to validate aggregate boundaries using the "can this change without coordinating another aggregate?" test. |
| Entities, Value Objects, and AI | pp. 211–213 | AI distinguishes Entities from Value Objects by looking for identity requirements. CookWithUs: Cook is an Entity, Ingredient is a Value Object, ShoppingItem is a Value Object. |
| Invariants Made Explicit | pp. 214–219 | AI surfaces invariant candidates from EventStorming policy stickies. CookWithUs: Recipe must have a unique Title; a Cook cannot rate their own Recipe; a Recipe must have at least one Ingredient and one HowTo Step. Each rule stated as precondition, postcondition, and violation response. Two AI-suggested invariants rejected and why. |
| *(Aggregates Defined, APIs Ahead)* | p. 220 | The Domain Model artifact closes step 11: a validated aggregate map with Entities, Value Objects, and documented invariants. |

**Diagrams:** CookWithUs aggregate map (full page, p. 207) · Recipe aggregate internals (half page, p. 212)  
**Footnotes:** ¹ ⁶ ⁷

---

### Chapter 14 — AI-Enhanced REST API and Event Design (pp. 221–236)

**Core argument:** The Domain Model is the inside view. APIs and events are the outside view. AI generates both from the artifacts already produced, and the Ubiquitous Language governs every field name, every path, every event property.

| Section | Pages | Content |
|---|---|---|
| *(From Internal to External)* | pp. 221–222 | The Domain Model defines what the bounded context knows and enforces. The API and event contracts define what it tells others. AI closes the gap by deriving the external view directly from the internal model. |
| From Aggregate to Endpoint | pp. 223–227 | AI generates OpenAPI endpoints from CookWithUs aggregates. The self-rating invariant appears as a 403 response. The Title uniqueness invariant appears as a 409 conflict. Every aggregate operation has a corresponding endpoint. |
| AI Writes the Event Contracts | pp. 228–231 | AI generates AsyncAPI schemas from the EventStorming board and Domain Model. RecipeRated: raterId ≠ cookId enforced at schema level. Every EventStorming event has a corresponding AsyncAPI schema. |
| One Language, One Contract | pp. 232–235 | AI validates consistency across the entire artifact set. CookWithUs: AI finds two inconsistencies — "userId" vs. "cookId" and "steps" vs. "howTo". Both corrected before the contract is signed. |
| *(The Contract Is Signed)* | p. 236 | The complete API artifact set closes step 12. These are the contracts the EXACT Coding chapter will implement — and the tests will enforce. |

**Diagrams:** Recipe aggregate to OpenAPI endpoint mapping (half page, p. 224) · RecipeRated AsyncAPI schema with invariant enforcement (half page, p. 230)  
**Footnotes:** ¹ ⁶ ⁸ ¹⁴ ¹⁵

---

### Chapter 15 — From Example Mapping to EXACT Coding (pp. 237–256)
*(co-authored with Ferdinand Ade & Marco Emrich)*

**Core argument:** Example Mapping defines what the software must do. EXACT Coding — Example-Guided, AI-Collaborative & Test-Driven — is the discipline that turns those examples into maintainable software without vibe-coding your way into an unmaintainable codebase. This is what AI-assisted DDD looks like at the keyboard.

| Section | Pages | Content |
|---|---|---|
| *(From Criteria to Code)* | pp. 237–238 | The Blueprint has produced a Domain Model, an API contract, and documented invariants. Example Mapping closes step 10. This chapter is the keystone of the book — where every upstream modeling decision pays off or reveals its gaps. |
| Mapping the Examples | pp. 239–241 | AI generates candidate examples from Domain Model invariants and API contract. CookWithUs: the self-rating rule generates three examples — including the co-authorship edge case the model hadn't addressed. Each example becomes a test before it becomes code. |
| EXACT: A New Way to Code with AI | pp. 242–246 | Ferdinand Ade and Marco Emrich introduce EXACT Coding. Why vibe-coding fails in complex domains. The Ubiquitous Language becomes rule files and prompt vocabulary. The four EXACT core modules: TDD, Example Mapping, Mob/Ensemble Programming, AI tooling (Claude Code and Cursor). |
| The EXACT Workflow in Practice | pp. 247–251 | The EXACT workflow applied to CookWithUs: failing test → AI prompt with Domain Model invariant and OpenAPI spec → implementation → human-in-the-loop decision → refactor if needed. Tests are the living specification — safe refactoring is only possible because the tests reflect the domain. |
| Ensemble Programming with AI | pp. 252–255 | Driver, two navigators, and an AI that never gets tired. The human-in-the-loop decisions AI cannot make. CookWithUs: the co-authorship edge case forces a Domain Model update — the team pauses EXACT, updates the aggregate invariant, regenerates the test, then continues. |
| *(The Blueprint Lands in Code)* | p. 256 | EXACT Coding is the answer to "what does AI-assisted DDD look like at the keyboard?" The Blueprint's upstream investments pay off here: the richer the domain context, the more reliably AI implements it. |

**Diagrams:** EXACT workflow diagram (full page, p. 244) · CookWithUs self-rating example map (half page, p. 240)  
**Footnotes:** ¹ ⁶ ¹⁶ ¹⁷ ²⁰

---

### Chapter 16 — Service and Repository Implementation Using AI (pp. 257–273)

**Core argument:** The final Blueprint steps (13–14) turn the Architecture Communication Canvas and EventStorming Detail into running, documented software. AI generates the infrastructure scaffolding; the domain logic stays in human hands.

| Section | Pages | Content |
|---|---|---|
| *(The Last Step)* | pp. 257–258 | Steps 13–14 are not where the hard thinking happens — that's done. It's where the thinking becomes software. AI generates service skeletons, repository scaffolding, and living documentation from the artifacts already produced. |
| From Canvas to Service | pp. 259–264 | AI generates the CookWithUs Sharing service skeleton from the Architecture Communication Canvas and OpenAPI spec. CQRS separating ShareRecipe commands from recipe query projections. Event Sourcing for Recipe history. Every OpenAPI endpoint has a handler, every handler calls a domain method, every domain method maps to an aggregate operation. |
| Persistence in the Language of the Domain | pp. 265–269 | AI generates Repository interfaces and implementations from the Domain Model. CookWithUs: RecipeRepository — findById, save, findByTitle. Title uniqueness enforced in the RecipeRepository save method — not in the service layer, not in the API handler. |
| From Decisions to Documentation | pp. 270–273 | AI populates the Architecture Communication Canvas from the implemented service definitions and EventStorming Detail board. The canvas as living documentation updated with every significant change — and as the onboarding document for every new team member. |

**Diagrams:** Sharing service architecture from the Canvas (half page, p. 260) · RecipeRepository with invariant enforcement (half page, p. 266)  
**Footnotes:** ¹ ⁶ ⁷ ²⁰

---

## Summary and Outlook

### Chapter 17 — Summary and Outlook (pp. 274–286)

**Core argument:** The Synergetic Blueprint was always designed to produce software that reflects its domain. AI makes that ambition more achievable — faster cold starts, richer artifacts, more consistent language. What it cannot do is replace the human judgment that makes the domain knowable in the first place.

| Section | Pages | Content |
|---|---|---|
| *(From North Star to Running Software)* | pp. 274–275 | The full CookWithUs journey in two pages: from the founding team's blank canvas to a running, tested, documented software system. Every artifact named, every step connected — North Star (1) → Business Plan (2) → Capabilities (3) → Domain Story (4) → Visual Glossary (5) → Bounded Contexts (6) → Enhanced Glossary (7) → Event Model (8) → Context Map (9) → Testcases (10) → Domain Model (11) → API Contracts (12) → Services (13) → Repositories (14). |
| The Difference AI Made | pp. 276–280 | A synthesis across all five parts. What changed: cold starts collapsed, first drafts arrived in minutes, consistency checks ran in seconds, hidden rules surfaced faster. What stayed irreducibly human: knowing the domain, owning the decisions, validating the language, judging "good enough." The five principles from Chapter 3 revisited. |
| From Augmentation to Autonomy | pp. 281–284 | Where AI-assisted DDD is heading. Autonomous modeling agents in real-time EventStorming sessions. AI-maintained living glossaries. Real-time consistency checking across the full artifact chain. The questions worth watching: when does AI stop being a sparring partner and start being a decision-maker? What stays human when everything else can be automated? |
| *(The Human at the Centre)* | pp. 285–286 | A personal note. The Blueprint was designed by people who believe that great software is a product of deep understanding. AI makes that understanding faster to develop and easier to encode. It does not make it unnecessary. The human at the centre of every Blueprint step is not a bottleneck to be optimized away — they are the reason the software matters. |

**Diagrams:** The complete CookWithUs artifact chain (full page, p. 275)  
**Footnotes:** ¹ ⁶ ⁷ ⁹ ¹⁰ ²⁰

---

## Master Reference List
APA style with footnote numbers. All chapters draw from this list.

### Foundational DDD
- ¹ Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley.
- ² Vernon, V. (2013). *Implementing domain-driven design*. Addison-Wesley.
- ³ Vernon, V. (2016). *Domain-driven design distilled*. Addison-Wesley.

### Collaborative Modeling
- ⁴ Hofer, S., & Schwentner, H. (2021). *Domain storytelling: A collaborative, visual, and agile way to build domain-driven software*. Addison-Wesley.
- ⁵ Brandolini, A. (2021). *Introducing EventStorming*. Leanpub.

### Your Previous Books
- ⁶ Junker, A. (2025). *Mastering domain-driven design: Collaborative modeling with domain storytelling, event storming, and context mapping*. BPB Publications. ISBN 9789365892529
- ⁷ Junker, A. (2026). *DDD toolbox: Comprehensive overview of concepts and collaborative modeling*. BPB Publications. ISBN 9789365892741
- ⁸ Junker, A., & Lazzaretti, F. (2025). *Crafting great APIs with domain-driven design: Collaborative craftsmanship of asynchronous and synchronous APIs*. Apress. ISBN 9798868814563

### Your Blog Posts
- ⁹ Junker, A. (2026, March 4). *From stories to code: How domain storytelling and EventStorming give LLMs the context they need*. codecentric AG. https://www.codecentric.de/en/knowledge-hub/blog/from-stories-to-code-how-domain-storytelling-and-eventstorming-give-llms-the-context-they-need
- ¹⁰ Junker, A. (2026, April 2). *From domain story to prototype: Specification-driven prototyping in DDD workshops*. codecentric AG. https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype

### Architecture & Patterns
- ¹¹ Skelton, M., & Pais, M. (2019). *Team topologies: Organizing business and technology teams for fast flow*. IT Revolution Press.
- ¹² Tune, N. (2024). *Architecture modernization: Socio-technical alignment of software, strategy, and structure*. Manning.
- ¹³ Richardson, C. (2018). *Microservices patterns*. Manning.

### API Design
- ¹⁴ OpenAPI Initiative. (2021). *OpenAPI specification 3.1.0*. https://spec.openapis.org/oas/v3.1.0.html
- ¹⁵ AsyncAPI Initiative. (2024). *AsyncAPI specification 3.0.0*. https://www.asyncapi.com/docs/reference/specification/v3.0.0

### Testing & TDD
- ¹⁶ Beck, K. (2002). *Test-driven development: By example*. Addison-Wesley.
- ¹⁷ Wynne, M., Hellesøy, A., & Tooke, S. (2017). *The cucumber book: Behaviour-driven development for testers and developers* (2nd ed.). Pragmatic Bookshelf.

### Strategic Tools
- ¹⁸ Ward, S. (2016). *Wardley maps*. https://learnwardleymapping.com
- ¹⁹ Osterwalder, A., & Pigneur, Y. (2010). *Business model generation*. Wiley.

### EXACT Coding (to be confirmed)
- ²⁰ Emrich, M., & Ade, F. (2025). *EXACT coding workshop*. DDD Academy. https://ddd.academy/exact-coding-workshop/
