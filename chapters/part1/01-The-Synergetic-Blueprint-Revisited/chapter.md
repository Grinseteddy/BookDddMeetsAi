:::{custom-style="CHAPTER NUMBER"}
Chapter 1
:::

:::{custom-style="Chapter Title"}
The Synergetic Blueprint Revisited
:::

:::{custom-style="Body Text First"}
Eric Evans introduced Domain-Driven Design (DDD) as a cornerstone of software design in 2003 [@evans2003ddd].
Since then, the DDD community has developed a rich set of practices and patterns to help teams design software that truly reflects the business domain.
Using generative Artificial Intelligence (AI) in software design and architecture is a natural next step in this evolution. However, it requires a structured process to ensure that AI output is relevant and actionable, as outlined in the Synergetic Blueprint [@junker2026toolbox].
Moreover, it requires a clear understanding and implementation of the domain in question.
When AI meets DDD, the context required by AI is provided by rich models created through a collaborative, iterative process, feeding the generative AI the necessary context.
:::

# The Monday morning problem

:::{custom-style="Body Text First"}
Domain-driven design workshops are often the most exciting part of a project: the room buzzes with insight, the whiteboard fills with clarity, and the team leaves energized.
But then comes Monday morning: how do we translate that insight into software?
The gap between workshop output and delivered software is where many projects falter.
The Synergetic Blueprint was designed to bridge that gap, but it can feel abstract without a concrete example.
It was first introduced by Junker in 2025 [@junker2025mastering] and further developed by Lazzaretti [@junker2025crafting]. The version used here was presented in DDD Toolbox [@junker2026toolbox].
In this book, we will revisit the Blueprint through the lens of CookWithUs, a fictional recipe-sharing platform that will serve as our companion domain throughout.
We will see how AI does not replace the Blueprint but rather reveals where it was always waiting for richer input.
:::

# Synergetic Blueprint in a nutshell

:::{custom-style="Body Text First"}
The Synergetic Blueprint is a structured process that guides teams from business intent to running software.
:::

## Strategic design part of the Synergetic Blueprint

:::{custom-style="Body Text First"}
The strategic part of the Blueprint is shown in Figure 1-1.
:::

:::{custom-style="Figure"}
![](./assets/StrategicDesign.jpg)
:::
:::{custom-style="Figure Caption"}
Figure 1-1: The strategic part of the Synergetic Blueprint
:::

:::{custom-style="Body Text First"}
It consists of three zones (Ideation, Requirements, and Solution Design) and fourteen steps that iteratively frame the problem space and define the solution space.
The Blueprint emphasizes the importance of context in AI-augmented software development, ensuring that AI output is relevant and actionable.

_*Step 1: Define the business intent*_

The problem to be solved and the value to be created must be defined.
We can define a North Star Metric to align the teams around a single measure of success [@ellis2017hacking; @ellis2017northstar].
The workshops can use Brainstorming or Brainwriting, or leverage AI to generate ideas and structure them [@osborn1953applied; @miller2012quick].

_*Step 2: Lay out a plan*_

In a second step, a business plan is created to define the steps to reach the business intent.
The plan can be created using techniques such as the Business Model Canvas [@osterwalder2010business] or the Lean Canvas [@maurya2012running].
The AI can be used to generate ideas for the business plan and to structure them.

_*Step 3: Define the domain*_

The domain is defined by the prioritization and structuring of the business capabilities.
The domain is further detailed using techniques like Impact Mapping [@adzic2012impact] or capability maps [@moser2025capability; @opengroup2022togaf].

AI helps structure and generate ideas for group discussion.

Moreover, the capabilities, including their functions, that fulfill user requirements, need to be prioritized.
A highly effective technique is the Wardley Map, which prioritizes functions and software implementations based on their value and maturity [@wardley2022maps].

_*Step 4: Gather business requirements*_

Business requirements are gathered and structured for software development.
Techniques such as Domain Storytelling can be used [@hofer2021storytelling].

AI can be used to generate and structure the business requirements based on the domain story and the business plan. It helps facilitators to prepare and debrief corresponding workshops.

_*Step 5: Define the ubiquitous language*_

The ubiquitous language is one of the cornerstones of DDD and the Blueprint. It is defined by the terms and concepts that are used to describe the domain and the software.
A Visual Glossary accompanied by Domain Storytelling and EventStorming is highly useful throughout the entire development process [@zoerner2021architekturen].

The creation of the Visual Glossary can be supported by AI by collecting work items and actors from the domain story to build the glossary.

_*Step 6: Define bounded contexts*_

Bounded contexts can be defined by Big Picture EventStorming [@brandolini_eventstorming_web; @brandolini2021eventstorming].

AI can support the process by proposing events based on the domain story and proposing bounded contexts based on the events and the ubiquitous language.

_*Step 7: Refine the ubiquitous language*_

During the EventStorming process, new terms and concepts are determined, and the ubiquitous language is further detailed using the Visual Glossary.

_*Step 8: Explore the API and user journey*_

The API and user journeys are explored to define the software solution. The journey and affected systems can be explored using Event Modeling [@dilger2024understanding].

AI can support the process by proposing API and user journeys based on the domain story, the ubiquitous language, and the defined bounded contexts. Usually, existing systems to be used, e.g., an Input Management System, can be proposed as well, when they are part of the AI context.

_*Step 9: Define the services and APIs*_

Business experts and IT specialists together define services and APIs based on the ubiquitous language and the defined bounded contexts in a context map.
They use known DDD patterns as an Open Host Service, an Anti-Corruption Layer, or the Conformist pattern [@evans2003ddd].

Further patterns can be used to define the microservice environment, such as choreography, orchestration, CQRS, event-driven architecture, or event sourcing [@microsoft2025choreography; @bhardwaj2023orchestration; @richardson2019microservices; @davis2019cloudnative; @skrzymowski2024eda; @richardson2025eventsourcing].
Those services can be deployed as a modular monolith [@garg2023modular].

AI supports the design of the solution architecture by proposing a certain pattern for a certain problem.

:::

## Tactical design part of the Synergetic Blueprint

:::{custom-style="Body Text First"}
The tactical design part falls under the solution area and comprises two zones: Acceptance Criteria and Testing and Solution Design. It is done inside a bounded context team and is shown in Figure 1-2.
:::

::: {custom-style="Figure"}
![](./assets/TacticalDesign.jpg)
:::
:::{custom-style="Figure Caption"}
Figure 1-2: The tactical part of the Synergetic Blueprint
:::

:::{custom-style="Body Text First"}

_*Step 10: Define test cases*_

To define test cases, the Example Mapping technique can be used [@smart2023bdd, @vankelle2024collaborative].

It is even more important to give a generative AI an appropriate harness [@emrich2026exact].

_*Step 11: Define domain model*_

Using the enhanced Visual Glossary with the refined Ubiquitous Language, the domain model is defined. It contains aggregates, entities, value objects, and domain events [@evans2003ddd].

_*Step 12: Define REST APIs*_

The REST APIs are defined based on the domain model and the API Product Canvas [@junker_apicanvas; @junker2025crafting].
It uses the refined ubiquitous language, too.

AI can generate an OpenAPI or AsyncAPI specifications from the domain model and the API Product Canvas [@openapi2025spec; @asyncapi2024spec].

_*Step 13: Define service architecture*_

The internal service architecture is defined based on the domain model and a Design-Level EventStorming [@evans2003ddd;@brandolini_eventstorming_web].

_*Step 14: Define repositories*_

Repositories used in the service can be defined based on the domain model and enhanced ubiquitous language [@evans2003ddd].
AI supports this step in generating the necessary code.

Those steps will be explained throughout the book, using the companion domain CookWithUs.
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
Figure 1-3: Sketches of a CookWithUs recipe sharing platform
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
Every step leaves behind a structured artifact (Domain Story, Visual Glossary, EventStorming board, Context Map) that names actors, work objects, events, and rules in the team's own ubiquitous language. 
Generative AI works best when given exactly this kind of input. The Blueprint was not designed for AI, but it produces the artifacts AI most needs.

That observation reframes what AI is doing in a Blueprint workshop.
It is not generating answers from nothing.
It is reading the artifacts the team has already produced and offering material the team can react to.
Across the chapters ahead, that material falls into three roles.

_As a validator_, AI checks the artifacts the team produces against each other.
It flags a term in the Visual Glossary when it drifts from the Domain Story, when an event on the EventStorming board has no corresponding API endpoint, or when an aggregate invariant is missing from the OpenAPI spec.
The team owns the decision; AI surfaces the inconsistency.

_As an accelerator_, AI collapses the cold start that begins every modeling session.
A blank EventStorming board, an empty Capability Map, a North Star sentence the team cannot yet write: AI produces a first draft within minutes, giving the team something concrete to react to.
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
Part IV covers strategic Solution Design: context mapping, architecture decisions, services, and APIs.
Part V covers tactical design and implementation: test cases, the domain model, REST and event APIs, and the services and repositories that run the code.
Part I, which this chapter closes, sets the foundation: the Blueprint itself, AI as a design partner, and the principles that keep humans in charge of the process.

CookWithUs runs through every chapter as the worked example.
The prompts, skills, and agents used along the way are described in detail in the chapters where they apply, and the full set of assets, including the running CookWithUs codebase, is available in a public repository (https://github.com/Grinseteddy/SamplesDddMeetAi).

Before any of that begins, chapter 2 looks more closely at AI as a design partner: the context it thrives in, the mistakes it makes, and the mental model a team needs to work with it well.
:::

# Points to remember

:::{custom-style="Bullet"}
The Synergetic Blueprint is a structured process that guides teams from business intent to running software in fourteen iterative steps.


The Blueprint provides the context that makes generative AI relevant and actionable.


AI plays three roles in the Blueprint: validator, accelerator, and provocateur.


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
