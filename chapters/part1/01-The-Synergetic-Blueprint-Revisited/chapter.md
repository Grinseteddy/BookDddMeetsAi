:::{custom-style="CHAPTER NUMBER"}
Chapter 1
:::

:::{#ch01-synergetic-blueprint custom-style="Chapter Title"}
The Synergetic Blueprint Revisited
:::

:::{custom-style="Body Text First"}

Domain-Driven Design (DDD) has been a powerful approach to software design for two decades, helping teams create software that truly reflects the business domain.
The approach was introduced by Eric Evans in 2003 [@evans2003ddd] including a fundamental set of patterns in both strategic design (bounded contexts, the Ubiquitous Language, context maps) and tactical design (Aggregates, Value Objects, Entities, Domain Events).
Since 2003, the DDD community has developed a rich set of practices to help teams design software such as EventStorming [@brandolini_eventstorming_web] and Domain Storytelling [@hofer2021storytelling].
:::

:::{custom-style="Note/Tip/Caution"}
**A note on terminology.**

Strictly speaking, artificial intelligence is the broad field, generative AI is a subset of it, and large language models (LLMs) are one technology within that subset.
The three are not interchangeable.
In this book, however, the AI we work with throughout
the Blueprint is almost always an LLM, and the
distinctions rarely change the argument.
For readability, AI, generative AI, and LLM are used interchangeably; where the difference matters, it is called out explicitly.
:::

:::{custom-style="Body Text First"}
Artificial Intelligence (AI) is now emerging as a natural next step, offering new ways to enhance the DDD process.
It is the third spring of DDD [@khononov2026aiera].
The first was the introduction of DDD itself, which provided a new way to think about software design and architecture.
The second was the rise of practices like EventStorming and Domain Storytelling, which matured alongside the move to microservices and gave teams concrete ways to apply DDD at scale.
Using generative Artificial Intelligence (AI) in software design and architecture is the next step in this evolution. 
:::

:::{custom-style="Body Text First"}
To make that work, it requires a structured process to ensure that AI output is relevant and actionable, as outlined in the Synergetic Blueprint [@junker2026toolbox].
Moreover, it requires a clear understanding and implementation of the domain in question.

When AI meets DDD, the context required by AI is provided by rich models created through a collaborative, iterative process.
:::

# The Monday morning problem

:::{custom-style="Body Text First"}
Domain-driven design workshops are often the most exciting part of a project: the room buzzes with insight, the whiteboard fills with clarity, and the team leaves energized.
But then comes Monday morning: how do we translate that insight into software?
The gap between workshop output and delivered software is where many projects falter.
The Synergetic Blueprint was designed to bridge that gap, but it can feel abstract without a concrete example.
It was first introduced by Junker in 2025 [@junker2025mastering] and further developed by Junker and Lazzaretti [@junker2025crafting]. The version used here was presented in *DDD Toolbox* [@junker2026toolbox].
In this book, we will revisit the Blueprint through the lens of CookWithUs, a fictional recipe-sharing platform that will serve as our companion domain throughout.
We will see how AI does not replace the Blueprint but rather reveals where it was always waiting for richer input.
:::

# Synergetic Blueprint in a nutshell

:::{custom-style="Body Text First"}
The Synergetic Blueprint is a structured process that guides teams from business intent to running software.
It consists of three zones (steps 1-9, Ideation, Requirements, and Strategic Solution Design) in strategic design and two zones (steps 10-14, Acceptance Criteria and Testing, Tactical Solution Design) in the tactical design of the DDD process.
The process is iterative: teams can loop back to previous steps as needed.
The Blueprint emphasizes the importance of collaboration and the context in AI-augmented software development, ensuring that AI output is relevant and actionable.
The roles of AI in the Blueprint as drafter, validator, and provocateur are integrated into the process to enhance the team's work without replacing human judgment.
They are explained in detail in [Chapter 2](#ch02-ai-as-design-partner).
Following Evans' approach, the Blueprint is divided into strategic design and tactical design parts.
Strategic design focuses on the high-level structure of the domain and the relationships between different bounded contexts, while tactical design focuses on the design of the domain model and the implementation of the software within a bounded context.
:::

## Strategic design part of the Synergetic Blueprint

:::{custom-style="Body Text First"}
The strategic design part of the Synergetic Blueprint consists of three zones: Ideation, Requirements, and Strategic Solution Design.
It is done in cross-functional teams and is shown in Figure 1-1.
:::

:::{custom-style="Figure"}
![](./assets/StrategicDesign.jpg)
:::
:::{custom-style="Figure Caption"}
**Figure 1-1.** The strategic part of the Synergetic Blueprint
:::

### Ideation

:::{custom-style="Body Text First"}

The ideation zone focuses on defining the business intent, laying out a plan, and defining the domain.

_*Step 1: Define the business intent*_

The problem to be solved and the value to be created must be defined.
We can define a North Star Metric to align the teams around a single measure of success [@ellis2017hacking; @ellis2017northstar].
The workshops can use Brainstorming or Brainwriting methods [@osborn1953applied; @miller2012quick].

_*Step 2: Lay out a plan*_

In this step, a business plan is created to define the steps to reach the business intent.
The plan can be created using techniques such as the Business Model Canvas [@osterwalder2010business] or the Lean Canvas [@maurya2012running].

_*Step 3: Define the domain*_

The domain is defined by the prioritization and structuring of business capabilities.
It is further detailed using techniques like Impact Mapping [@adzic2012impact] and capability maps [@moser2025capability; @opengroup2022togaf].

Moreover, the capabilities, including their functions, that fulfill user requirements need to be prioritized.
A highly effective technique is the Wardley Map, which prioritizes functions and software implementations based on their value and maturity [@wardley2022maps].
Another technique to prioritize capabilities is Core Domain Charts [@tune2025architecture].
It follows the principal idea of Wardley to identify business and technical complexity.
However, it is easier to use and therefore a practical alternative.
:::

### Requirements

:::{custom-style="Body Text First"}

The Requirements zone focuses on gathering and structuring business requirements, defining the Ubiquitous Language, defining bounded contexts, and exploring the API and user journey.

_*Step 4: Gather business requirements*_

Business requirements are gathered and structured for software development.
Techniques such as Domain Storytelling can be used [@hofer2021storytelling].

_*Step 5: Define the Ubiquitous Language*_

The Ubiquitous Language is one of the cornerstones of DDD and the Blueprint.
It is defined by the terms and concepts that are used to describe the domain and the software.
A Visual Glossary is a visual representation of the Ubiquitous Language and the relationships between its terms;
it is a useful tool to define and maintain that language [@zoerner2021architekturen].
It accompanies Domain Storytelling and EventStorming, and it is highly useful throughout the entire development process.

_*Step 6: Define bounded contexts*_

Bounded contexts can be defined by Big Picture EventStorming [@brandolini_eventstorming_web; @brandolini2021eventstorming].
The business process is explored by identifying the events that happen in the domain and grouping them into bounded contexts.

_*Step 7: Refine the Ubiquitous Language*_

The Ubiquitous Language is further refined during the EventStorming process.
Using the already existing Visual Glossary of Domain Storytelling, the model is extended.

_*Step 8: Explore the API and user journey*_

The API and user journeys are explored to define the software solution.
The journey and affected systems can be explored using Event Modeling [@dilger2024understanding].
Event Modeling is a method for modeling complex business processes and systems using events and commands.
:::

### Strategic solution design

:::{custom-style="Body Text First"}
The Strategic Solution Design zone focuses on defining the context map, the solution architecture across several bounded contexts, and the service boundary definition and APIs.

_*Step 9: Define the services and APIs*_

Business experts and IT specialists together define services and APIs based on the Ubiquitous Language and the defined bounded contexts in a context map.
They use known DDD patterns such as an Open Host Service, an Anti-Corruption Layer, or the Conformist pattern [@evans2003ddd].

Further patterns can be used to define the microservice environment, such as choreography, orchestration, CQRS, event-driven architecture, or event sourcing [@microsoft2025choreography; @bhardwaj2023orchestration; @richardson2019microservices; @davis2019cloudnative; @skrzymowski2024eda; @richardson2025eventsourcing].
Those services can be deployed as a modular monolith [@garg2023modular].

:::

## Tactical design part of the Synergetic Blueprint

:::{custom-style="Body Text First"}
The tactical design part falls under the solution area and comprises two zones: Acceptance Criteria and Testing, Tactical Solution Design. It is done inside a bounded context team and is shown in Figure 1-2.
:::

::: {custom-style="Figure"}
![](./assets/TacticalDesign.jpg)
:::
:::{custom-style="Figure Caption"}
**Figure 1-2.** The tactical part of the Synergetic Blueprint
:::

### Acceptance criteria and testing

:::{custom-style="Body Text First"}
The Acceptance Criteria and Testing zone focuses on defining test cases and giving AI a necessary harness to generate code that meets the business requirements.

_*Step 10: Define test cases*_

To define test cases, the Example Mapping technique can be used [@smart2023bdd, @vankelle2024collaborative].
Besides the business context, it is important to give an AI an appropriate harness [@emrich2026exact].
:::

### Tactical solution design

The Tactical Solution Design zone focuses on defining the domain model, REST APIs, service architecture, and repositories.
That is where the software design and architecture are defined in detail.

:::{custom-style="Body Text First"}

_*Step 11: Define domain model*_

Using the enhanced Visual Glossary with the refined Ubiquitous Language, the domain model is defined.
It contains aggregates, entities, value objects, and domain events [@evans2003ddd].

_*Step 12: Define REST APIs*_

The REST APIs are defined based on the domain model and the API Product Canvas [@junker_apicanvas; @junker2025crafting].
The modeling process using the API Product Canvas uses the refined Ubiquitous Language documented in the Visual Glossary.

_*Step 13: Define service architecture*_

The internal service architecture is defined based on the domain model and a Design-Level EventStorming [@evans2003ddd;@brandolini_eventstorming_web].

_*Step 14: Define repositories*_

Repositories used in the service can be defined based on the domain model and refined Ubiquitous Language [@evans2003ddd].


These steps will be explained in detail throughout the book, using the companion domain CookWithUs.
:::

# Meet CookWithUs

:::{custom-style="Body Text First"}
CookWithUs connects home cooks to share and discover recipes from the community. 
We use this fictional platform throughout the book to demonstrate the Synergetic Blueprint and its AI augmentation.
Figure 1-3 shows the two screens that anchor the idea.
:::

::: {custom-style="Figure"}
![](./assets/Together.png)
:::
:::{custom-style="Figure Caption"}
**Figure 1-3.** Sketches of a CookWithUs recipe sharing platform
:::

:::{custom-style="Body Text First"}
The feed lets readers browse, search, and filter by category (e.g., Quick, Vegan, Italian, Baking), and tap into any recipe to see the dish, ingredients, and steps as published by the author. 
The feed's main action is _Add your own recipe_, placing consumption and contribution on equal footing.
Each published recipe then becomes a focal point for community engagement: cooks who try it can rate it, leave comments, and upload their own photos or videos of the result.
A recipe is therefore a living artifact, authored once and continually enriched by everyone who cooks it.

Even from these two screens, the building blocks of the domain start to surface.
The principal actor is the Cook, who reads recipes today and may publish one tomorrow.
The central work object is the Recipe, with its Ingredients, Steps, and a Photo of the finished dish.
Around each Recipe, the community contributes Ratings, Comments, and further Photos of their own attempts.
Categories such as Quick, Vegan, or Italian let cooks find recipes that fit the moment. 
These terms are deliberately tentative: the chapters ahead will sharpen them, add the ones the sketch does not yet show, and decide which belong together in the same bounded context.
:::

# AI augments the Blueprint

::: {custom-style="Body Text First"}
The Synergetic Blueprint is a recent synthesis, named in 2025.
The techniques it brings together (Domain Storytelling, EventStorming, Context Mapping, and the rest) are mature, and teams have used them for years without an LLM in the room. 
The result has long been good software that reflects its domain.
So the question this book has to answer is not whether AI helps, but where it helps, and why. 
The answer starts with a simple observation: the Blueprint produces unusually good context. 
Every step leaves behind a structured artifact (Domain Story, Visual Glossary, EventStorming board, Context Map) that names actors, work objects, events, and rules in the team's own Ubiquitous Language. 
Generative AI works best when given exactly this kind of input. The Blueprint was not designed for AI, but it produces the artifacts AI most needs.

That observation re-frames what AI is doing in a Blueprint workshop.
It is not generating answers from nothing.
It is reading the artifacts the team has already produced and offering material the team can react to.
Across the chapters ahead, that material falls into three roles.

_As a validator_, AI checks the artifacts the team produces against each other.
It flags a term in the Visual Glossary when it drifts from the Domain Story, when an event on the EventStorming board has no corresponding API endpoint, or when an aggregate invariant is missing from the OpenAPI spec.
The team owns the decision; AI surfaces the inconsistency.

_As a drafter_, AI collapses the cold start that begins every modeling session.
A blank EventStorming board, an empty capability map, a North Star sentence the team cannot yet write: AI produces a first draft within minutes, giving the team something concrete to react to.
The first draft is rarely the final one.
It is the foothold from which the real work begins.

_As a provocateur_, AI argues the side the team has not considered.
It proposes the bounded context the team grouped together, the rule the team forgot to make explicit, the integration pattern the team would not have chosen.
A good provocateur is wrong often enough to be interesting and right often enough to be useful.

To make this concrete, consider the first step of the Blueprint applied to CookWithUs.
The founders have a sentence: "We want to make it easy for home cooks to share what they cook."
That is intent, not a North Star Metric.
Asked for candidates, AI proposes several: recipes published per active cook per month, cooks who try at least one community recipe per week, or recipes with at least one community photo.
None is the final answer.
The founders argue, and the argument itself is the point: the candidates gave them something to disagree with.
The North Star they eventually choose owes more to the disagreement than to the AI.
The chapters ahead apply this pattern to every Blueprint step. AI does not replace the humans in the process.
It works alongside them, augmenting steps where the Blueprint is ready for richer input.
:::

# How to read this book

:::{custom-style="Body Text First"}
This book follows the Synergetic Blueprint in order, but it does not need to be read in order.
Each chapter covers one Blueprint step, and each chapter follows the same shape: the step itself, the role AI plays in it, a CookWithUs illustration, and the references for going deeper.
A reader who picks up the book on Monday morning to solve a specific problem can open the chapter for that step and find what they need.

The chapters are grouped by Blueprint zone.
Part II covers Ideation: business intent, planning, and capability mapping.
Part III covers Requirements: Domain Storytelling, the Ubiquitous Language, EventStorming, and Event Modeling.
Part IV covers Strategic Solution Design: context mapping, architecture decisions, services, and APIs.
Part V covers tactical design and implementation: test cases, the domain model, REST and event APIs, and the services and repositories that run the code.
Part I, which this chapter closes, sets the foundation: the Blueprint itself, AI as a design partner, and the principles that keep humans in charge of the process.

CookWithUs runs through every chapter as the worked example.
The prompts, skills, and agents used along the way are described in detail in the chapters where they apply, and the full set of assets, including the running CookWithUs codebase, is available in a public repository (https://github.com/Grinseteddy/SamplesDddMeetAi).

Before any of that begins, [Chapter 2](#ch02-ai-as-design-partner) looks more closely at AI as a design partner: the context it thrives in, the mistakes it makes, and the mental model a team needs to work with it well.
:::

# Points to remember

:::{custom-style="Bullet"}
The Synergetic Blueprint is a structured process that guides teams from business intent to running software in fourteen iterative steps.


The Blueprint provides the context that makes generative AI relevant and actionable.


AI plays three roles in the Blueprint: validator, drafter, and provocateur.


CookWithUs is the fictional domain that runs through every chapter, illustrating the Blueprint and its AI augmentation in a concrete way.
:::

:::{custom-style="EXERCISE HEAD"}
Review questions
:::

:::{custom-style="Num List"}
Does AI replace humans in the Synergetic Blueprint process?
:::
:::{custom-style="Num Sub List"}
Yes, AI generates the software design and architecture based on the business intent.

No, AI works alongside humans, augmenting steps where the Blueprint is ready for richer input.

AI replaces business experts in the early steps and developers in the later steps.
:::

:::{custom-style="Num List"}
Is the Synergetic Blueprint only useful with AI?
:::
:::{custom-style="Num Sub List"}
Yes, it was designed specifically for AI-augmented software development.

No, it is a structured process that can be used with or without AI, but it produces the context that AI needs to be relevant and actionable.

It only works for traditional software development processes.
:::

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```

# References

::: {#refs}
:::

```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```
