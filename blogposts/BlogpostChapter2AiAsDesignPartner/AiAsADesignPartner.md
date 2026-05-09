# AI as a Design Partner — Drafter, Validator, Provocateur

*Part of the series* **Domain-Driven Design Meets AI**. 
The previous post introduced the [Synergetic Blueprint](https://www.codecentric.de/en/knowledge-hub/blog/the-synergetic-blueprint-revisited-and-why-ai-changes-everything) as the structured process that turns DDD methods into a coherent end-to-end design flow, and made the case that AI augments every step of it.
This post zooms in on the question that follows immediately: **what exactly does AI do inside a Blueprint step — and what does it mean when we say AI is "augmenting" the work?**

---

## The Wrong Question

When teams start using AI for design work, the first question usually is: *what can AI do for us?*

It is the wrong question.
The answer is too broad to be useful: AI can summarize, generate, critique, translate, classify, validate, and a dozen other things, often within the same conversation.
Asking what AI *can* do invites the team to throw everything at the model and hope something useful comes back.
That is exactly how we end up with confidently generated nonsense in the middle of an otherwise rigorous design process.

A better question is: *what role is AI playing right now?*

When the role is named, the team knows what to expect from the output, what to check for, and what to push back on.
When the role is unnamed, every AI response feels like an oracle pronouncement, and the team either over-trusts it or dismisses it.

Three roles cover almost everything AI does inside the Synergetic Blueprint: **Drafter**, **Validator**, and **Provocateur**.
They are not new.
Every design team has always needed someone drafting, someone validating, and someone challenging.
What is new is that each role can now be filled either by a human or by AI — the role stays the same; only the actor changes.
The interesting question is not which role belongs to AI along the Synergetic Blueprint process; it is **who is filling which role at this step, and why**.

---

## Three Roles, Defined

### Drafter
The Drafter produces a first-draft artifact: a proposed Domain Story, an OpenAPI specification, a service implementation.
The Drafter's output is concrete enough to be wrong.
That concreteness is the point: a wrong-but-specific draft is faster to evaluate, edit, or reject than a blank page is to fill from scratch.
The Drafter does not make decisions; the Drafter creates material that decisions can be made about.

### Validator
The Validator checks artifacts for internal consistency and alignment with what is already known.
Does the term *Meal* in the new EventStorming session match the *Meal* in the Visual Glossary, or has it drifted?
Does the OpenAPI specification enforce the ubiquitous language documented in the Visual Glossary?
Are there bounded contexts in the Context Map that no Domain Story ever mentioned?
Validation is comparison work — checking new artifacts against the accumulated set, and flagging where they diverge.

### Provocateur
The Provocateur asks questions, surfaces assumptions, and challenges decisions while they are still soft.
*Have you considered the case where two cooks publish the same recipe at the same time?
Why is Shipping a separate bounded context rather than a capability of Sharing?
What happens if the Supplier API is unavailable for a week?*
The Provocateur does not draft alternatives and does not check consistency.
The Provocateur makes the team defend choices they were about to make implicitly.

The roles are distinguishable.
A Drafter who also asks questions is doing two jobs in one turn.
A Validator who proposes alternatives has stopped validating and started drafting.
The clarity comes from naming each move separately, even when the same conversation contains all three.

---

## Roles Are Positions, Not Actors

Here is the move that changes how AI fits into the Blueprint: **the three roles are positions, not actors**.
Either a human or AI can fill any of them, and the right answer depends on the Blueprint step, the artifact, and what is already known.

This sounds simple.
It is not how most teams work in practice.
The default assumption is that AI is "the generator" and humans are "the reviewers."
That assumption is wrong in both directions.
There are Blueprint steps where AI cannot draft because the work requires knowledge AI does not have.
There are Blueprint steps where humans should not draft because the work is mechanical and AI does it faster and more consistently.
The Validator and the Provocateur are similarly distributed — sometimes AI is doing the validating, sometimes humans are; sometimes AI is the devil's advocate, sometimes the team's most senior architect is.

The picture below maps how these roles distribute across the Synergetic Blueprint.
The primary artifacts are on the left, the role distribution in the middle, and the derived artifacts on the right.
Strategic Design in blue at the top, Tactical Design in green at the bottom.

> **[Figure: Roles across the Synergetic Blueprint — Drafter, Validator, Provocateur, with human and AI icons showing who fills each role at each step]**

The diagram is dense on purpose.
It tries to communicate three things at once: which artifacts the Blueprint produces, what role distribution applies at each step, and how that distribution shifts as the work progresses from ideation to running software.
Three patterns are worth pulling out.

---

## Pattern 1: AI Cannot Draft a Genuinely New Idea

At the top of the Blueprint — North Star and Business Plan — humans are the Drafter and AI is the Provocateur.
This is not a stylistic choice.
It is a principled limit on what AI can do.

If a business idea is genuinely novel, AI's training data does not contain it.
AI cannot generate something it has never seen.
Anything AI proposes for a North Star will be a recombination of existing patterns — which is useful for benchmarking but actively misleading if the team is trying to build something the world has not seen before.
**If AI can draft your North Star, your North Star is not new.**
This might be helpful in brownfield projects, but it is not helpful in greenfield projects.

This does not mean AI is useless at this stage.
AI is exceptional as a Provocateur during ideation.
*What customer segments are you ignoring?
What revenue model has every two-sided marketplace eventually adopted, and why have you ruled it out?
What are the three most common reasons platforms in your space fail in their first two years?*
These questions surface assumptions the team would have left implicit.
AI's training data — the same training data that disqualifies it as a Drafter — is precisely what makes it a strong Provocateur.
It has read more failed business plans than any human can ever have.

By the time the Blueprint reaches Domain Storytelling, the novel decisions are locked in.
The team has decided what they are building.
The work shifts from "what should this be?" to "how does it work?", and AI can co-draft the answer.
A Domain Story for CookWithUs has actors (Cook, Anonymous User), work objects (Recipe, Ingredient, Rating), and activities (publish, rate, share).
None of those are domain inventions; they are domain *expressions*.
AI has seen enough recipe-sharing platforms to draft a candidate Domain Story that the team can edit in minutes rather than build over hours.

The handoff from human-as-Drafter to co-drafting happens, in the Blueprint, at exactly the boundary between *intent* and *expression*.

---

## Pattern 2: The Prototype as a Recurring Validation Instrument

Three rows in the diagram are labeled *Prototype*, sitting after Domain Storytelling, after Big Picture EventStorming, and after the User and API Journey. 
Each row shows AI as the Drafter and humans as the Validator.
This is a pattern worth naming.

The prototype is not the artifact to be delivered.
The validated upstream artifact, like the Domain Story, is.
The prototype is the *instrument that makes validation possible*.

A Domain Story sitting on a Miro board is hard to validate.
The team agrees with it because they wrote it.
A Domain Story turned into a working API prototype with stubbed endpoints and example responses is easier to validate because the team can ask it questions. 
*What happens when an Anonymous User tries to rate?
Does the system accept a recipe with no ingredients?
When two cooks claim the same recipe title, what does the API return?*
The prototype reveals gaps in the Domain Story that nobody noticed when it was just icons and arrows.

The same loop runs after EventStorming and after the User and API Journey.
Each time, AI drafts a richer prototype because the upstream artifacts are richer, and each time the humans validate something different. 
The first prototype tests the Domain Story.
The second tests the boundary decisions and event flow.
The third tests the journey and API surface.
This was demonstrated empirically in our published three-iteration prototyping pipeline for [CookWithUs](https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype) — richer artifacts produced measurably more complete prototypes at every step.

The lesson is structural, not specific to prototypes.
Across the Blueprint, AI's downstream draft is often the lens through which humans validate their upstream draft.
Without the prototype, the Domain Story can be wrong without anyone noticing.
With it, possible incorrectness becomes visible.

---

## Pattern 3: Tactical Inversion

At the bottom of the diagram, the role distribution is reversed from the top.
AI is the Drafter for Context Maps, Domain Models, API Product Canvases, Design-Level EventStorming, and Code. 
Humans are the Validator and Provocateur.

This inversion is not arbitrary.
It follows from the Blueprint structure.
Tactical design is downstream of strategic design.
By the time the team drafts a Domain Model, existing artifacts such as the Visual Glossary, the EventStorming board, the Context Map, and the API journey are already in place.
AI now has a rich, project-specific context that did not exist at the top of the Blueprint.
With that context, AI can draft tactical artifacts with high reliability: cluster events into aggregate candidates, distinguish entities from value objects, propose context map integration patterns with explicit reasoning, derive OpenAPI endpoints from aggregates with invariants encoded as HTTP status codes.

What humans bring at this stage is judgment.
The aggregate boundaries AI proposes are *plausible*; however, plausible is different from *right*.
Whether *ShoppingItem* is an entity inside the *ShoppingList* aggregate or a value object that the list contains is a domain decision, not a structural one, and AI cannot make it.
The human role becomes Provocateur: pushing back on AI's draft, demanding justification for each boundary, rejecting invariants that look reasonable but contradict business rules.

The Blueprint progresses from "humans draft, AI provokes" through "humans and AI co-draft" to "AI drafts, humans provoke." The roles stay the same; the actors filling them shift.


---

## What Stays Cross-Cutting

The Validator does not move with the Blueprint the way the Drafter and the Provocateur do.
Validation runs continuously, comparing each new artifact to everything that came before.

In CookWithUs, the term *Making* appeared in the original Domain Story and was later renamed *HowTo* in the refined Visual Glossary.
That rename is the kind of change that propagates silently through subsequent artifacts if nobody is checking.
AI as Validator can scan every downstream artifact — EventStorming stickies, OpenAPI fields, Domain Model code, API Product Canvas entries — and flag every place where *Making* still appears.
This is mechanical work that is too expensive to do by hand on every change, and it is exactly the kind of work AI does reliably.

Validation has a different rhythm than Drafting or Provocation.
Drafting happens at the start of each Blueprint step.
Provocation happens midstream, while decisions are still soft.
Validation happens *all the time*, in the background, as a discipline.
It is the role most likely to be quietly forgotten and the one whose absence creates the most downstream debt.

---

## The Core Argument

The three roles — Drafter, Validator, Provocateur — give the team a vocabulary for AI-assisted modeling that is more precise than "use AI for X" and more flexible than "AI replaces Y."
They name what is happening at each turn of the conversation, and they distribute responsibility appropriately between humans and AI.

The deeper argument is about *position*, not about AI specifically. 
**As the Blueprint progresses, the roles do not change. Who fills them does.**
Humans draft at the top because novelty lives in people.
Humans and AI co-draft in the middle because expression benefits from both domain knowledge and pattern recognition.
AI drafts in tactical design because the strategic artifacts now provide enough context for AI to be reliable.
Validator and Provocateur run throughout, with the actor depending on what is being checked and what is being challenged.

This framing has a practical payoff. 
When a team sits down to use AI in a Blueprint step, the first question is no longer *what can AI do for us here?*
It is *which role do we need filled, and is AI or a human better placed to fill it right now?*
That question has an answer.
The other one usually does not.

*Next in this series:* **Five Principles for AI-Assisted DDD** *— the collaboration cheat sheet that turns the role distribution into a working discipline.
When to trust AI output, when to challenge it, and how to keep the human firmly at the center of every Blueprint step.*

---

## References

Brandolini, A. (2023). *EventStorming*. Retrieved from <https://www.eventstorming.com/>

Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley.

Hofer, S., & Schwentner, H. (2021). *Domain Storytelling: A Collaborative, Visual, and Agile Way to Build Domain-Driven Software*. Pearson International.

Junker, A. (2025). *Mastering domain-driven design*. BPB Publications.

Junker, A. (2026). *DDD Toolbox*. BPB Publications.

Junker, A. (2026, March 4). *From stories to code: How domain storytelling and EventStorming give LLMs the context they need*. codecentric AG. <https://www.codecentric.de/en/knowledge-hub/blog/from-stories-to-code-how-domain-storytelling-and-eventstorming-give-llms-the-context-they-need>

Junker, A. (2026, April 2). *From domain story to prototype: Specification-driven prototyping in DDD workshops*. codecentric AG. <https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype>

Junker, A., & Lazzaretti, F. (2025). *Crafting great APIs with domain-driven design*. Apress.

Zörner, S. (2015). *Softwarearchitekturen dokumentieren und kommunizieren*. München: Carl Hanser Verlag.