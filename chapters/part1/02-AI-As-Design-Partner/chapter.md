::: {custom-style="CHAPTER NUMBER"}
Chapter 2
:::

::: {#ch02-ai-as-design-partner custom-style="Chapter Title"}
AI as Design Partner
:::

Establish what AI actually does in a modeling context — as Validator, Accelerator, and Provocateur — and where it breaks down. Give the reader the mental model they carry into every subsequent chapter.

1.	The Broken Promise — why AI code generation fails without domain context
2.	Context Is Everything — how LLMs work and why Blueprint artifacts are unusually good input
3.	AI as Validator, Accelerator, and Provocateur — the three roles with CookWithUs demonstrations
4.	When AI Gets It Wrong — failure modes named plainly; the self-rating rule as the canonical example
5.	Giving AI the Right Context — the three-ingredient formula
6.	AI as the Most Knowledgeable Junior Colleague — the mental model

# The Broken Promise

::: {custom-style="Body Text First"}
When AI code generation first became available, it was hailed as a game-changer for software development.
The promise was that developers could simply describe what they wanted in natural language, and the AI would generate the code for them.
However, this promise has largely failed to materialize in practice.

AI tended to hallucinate code that looked syntactically correct but was semantically meaningless [@kalai2025hallucinate].
AI never answered 'I do not have enough business information to generate this code' or 'I do not understand the problem well enough to generate this code.'
Instead, it generated code that looked plausible but was often wrong, leading to wasted time and frustration for developers.

The same is even true for design work.
When teams first started using AI for design, they expected it to generate perfect designs based on their input.
But instead, they got designs that looked good on the surface, however, were often flawed in ways that only became clear after careful review.
They tried to perfect their prompts, but no matter how much they tweaked the input, the AI continued to produce unsatisfactory results.
The problem was not with the AI itself, but with the way teams were using it.

::: {custom-style="Body Text First"}

## The Wrong Question

::: {custom-style="Body Text First"}
When teams start using AI for design work, the first question is: What can AI do for us?

It is the wrong question. 
The answer is too broad to be useful: AI can summarize, generate, critique, translate, classify, validate, and a dozen other things, often within the same conversation. 
Asking what AI can do invites the team to throw everything at the model and hope something useful comes back. 
That is exactly how we end up with confidently generated nonsense in the middle of an otherwise rigorous design process.

A better question is: What role is AI playing in our development process right now?
When the role is named, the team knows what to expect from the output, what to check for, and what to push back on.
When the role is unnamed, every AI response feels like an oracle pronouncement, and the team either over-trusts it or dismisses it.

Three roles cover almost everything AI does inside the Synergetic Blueprint (as already mentioned in [Chapter 1](#ch01-synergetic-blueprint)): Drafter, Validator, and Provocateur .
They are not new.
Every design team has always needed someone drafting, someone validating, and someone challenging.
What is new is that each role can now be filled by either a human or AI — the role stays the same; only the actor changes.

The important term here is 'either ... or.'
As with people, one can be either a Drafter or a Provocateur, but not both at the same time.
It is hard to draft an idea and question it at the same time.
It is easier to focus on one role and let someone else fill the other.

::: {custom-style="Body Text First"}


```{=openxml}
<w:p><w:r><w:br w:type="page"/></w:r></w:p>
```