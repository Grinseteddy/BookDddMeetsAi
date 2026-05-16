# Labor market

https://www.anthropic.com/research/labor-market-impacts
https://www.computerworld.com/article/4170988/jobs-lost-to-ai-could-reappear-elsewhere-and-solidify-ai-focused-roles.html


Matt Welsh
Primary source (the article itself):

Welsh, M. (2023). The end of programming. Communications of the ACM, 66(1), 34–35. https://doi.org/10.1145/3570220

Companion talk (cited in some coverage):

Welsh, M. (2023, February 8). Large language models and the end of programming [Conference presentation]. ACM Chicago Chapter. https://www.youtube.com/watch?v=mj0pW9_ckug

Useful secondary source if you want a paraphrased quote rather than reading the original:

MacManus, R. (2023, March 29). Coding sucks anyway — Matt Welsh on the end of programming. The New Stack. https://thenewstack.io/coding-sucks-anyway-matt-welsh-on-the-end-of-programming/

The quote is from his appearance at the World Governments Summit in Dubai, February 12, 2024 (not 2023 — worth flagging since you mentioned 2023 originally).
Primary source (Nvidia's own account):

NVIDIA. (2024, February 12). NVIDIA CEO: Every country needs sovereign AI [Blog post]. NVIDIA Blog. https://blogs.nvidia.com/blog/world-governments-summit/

The exact wording across sources is consistent: "It is our job to create computing technology such that nobody has to program. And that the programming language is human. Everybody in the world is now a programmer. This is the miracle of artificial intelligence."

Secondary sources with direct quotes if you prefer journalistic reporting:

Hill, B. (2024, February 25). Jensen Huang says kids shouldn't learn to code. Tom's Hardware. https://www.tomshardware.com/tech-industry/artificial-intelligence/jensen-huang-advises-against-learning-to-code-leave-it-up-to-ai


Hood, A. (2024, February 26). Nvidia CEO Jensen Huang's message to kids: generative AI means you don't need to learn coding. TechSpot. https://www.techspot.com/news/102020-nvidia-boss-jensen-huang-c

# Coding

https://www.anthropic.com/research/AI-assistance-coding-skills

https://newsletter.pragmaticengineer.com/p/when-ai-writes-almost-all-code-what

https://newsletter.pragmaticengineer.com/p/two-years-of-using-ai

# Harness

The article: https://martinfowler.com/articles/exploring-gen-ai/harness-engineering-memo.html (17 February 2026) — same series, fully public.


# Enterprise architecture

https://www.gartner.com/doc/reprints?id=1-2N18X2SP&ct=260320&st=sb

# Software engineering

https://newsletter.pragmaticengineer.com/p/two-years-of-using-ai

A guest post by Birgitta Böckeler — Thoughtworks Distinguished Engineer who has been working full-time on AI-assisted software delivery for two years — published in Gergely Orosz's Pragmatic Engineer newsletter (June 2025). The back half (impact on team effectiveness, the future) sits behind the paywall; the visible portion covers two sections fully.
Section 1 — Evolution. A short history of AI coding tools: autocomplete (Tabnine 2019, Copilot 2021) → IDE chat (2023) → codebase-aware chat (late 2023) → context providers and MCP (2024–25) → agentic coding (Aider 2023, Cline 2024, Cursor/Windsurf agentic modes late 2024, Claude Code 2025). She splits agents into supervised (human watches over the shoulder) and autonomous background (you only see the result). She focuses on supervised.
Section 2 — Working with AI. This is the substantive part:
A mental model for the AI teammate, borrowed from Ethan Mollick: eager to help, stubborn with short-term memory, very well-read but inexperienced, overconfident. She uses this to calibrate trust on the fly.
Four cognitive biases that AI specifically inflames: automation bias (trusting confident output), framing effect ("best practice" phrasing), anchoring effect (the first AI suggestion narrows your search), and a sunk-cost variant (over-attachment to AI-generated code that should've been thrown away).
Five practical principles for agentic work: use custom instructions, plan with AI before coding, keep tasks small, be concrete in prompts, use an explicit memory/context file structure (she points to Cline's memory bank as an example).
A throughline quote from Mollick — "AI is terrible software" — meaning it doesn't behave like deterministic tooling and you have to adapt to that.
Why this is a good cite for your book
Unlike the Gartner piece, this one's worth citing. Böckeler is a recognised practitioner (her writing on Martin Fowler's Exploring Gen AI series is openly accessible — that's the version your readers can reach without a paywall, and it's the better URL to point to). The voice is grounded, the claims are operational, and the audience overlap with your book is direct.
Where it intersects Chapter 2
The most striking overlap is your section 6 — AI as the Most Knowledgeable Junior Colleague. Böckeler's persona (well-read, inexperienced, overconfident, eager) is essentially the same mental model. You arrived at it independently, which is good external validation. Worth deciding how to handle: either acknowledge the convergence ("Böckeler and Mollick have settled on a similar mental model") which strengthens credibility, or note where yours is sharper — you tie the persona to role assignment (Drafter/Validator/Provocateur), where she leaves it at trust calibration. Yours gives the reader a decision to make; hers gives them an attitude to adopt.
Your section 4 — When AI Gets It Wrong — already gestures at hallucination. Böckeler's bias list is more specific and more useful: automation bias and anchoring in particular are mechanisms, not just symptoms. If you want to name failure modes "plainly" (your outline's phrasing), her four biases are clean labels readers will recognise.
Your section 2 — Context Is Everything — is directly reinforced. Her point that context providers, codebase awareness, and MCP are now where the differentiation lives is the industry catching up to what your Blueprint argument has been claiming about artifacts. Specifically: she says "the key to AI assistants is the context of what's being worked on" — which is your thesis stated in a different vocabulary. Useful as the practitioner-side evidence for a position you're making the design-side case for.
Your section 5 — Giving AI the Right Context (three-ingredient formula) — maps onto her five principles cleanly. Plan first / keep tasks small / be concrete / custom instructions / memory could be cross-walked into your three ingredients if you're looking for external corroboration, or distinguished from them if your three are doing different work.
Where Böckeler's framing is less developed than yours
She gives a mental model and ways of working, but she doesn't separate the roles AI plays from the attitudes the human should hold toward it. That separation is your chapter's specific contribution. The piece treats AI as a single thing with a single personality you adapt to; you're arguing it's a single thing that plays distinct roles, and naming which one is active changes what you should do. That's a finer-grained move and worth highlighting if you cite her.
Practical citation note
Don't link the paywalled Substack as the primary reference — link her pieces in Exploring Gen AI on martinfowler.com instead. They're free, more detailed, and the same author. The Substack post is essentially a curated digest of that material.

# Spec-driven development 

https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html

in my personal usage of AI-assisted coding, I also often spend time on carefully crafting some form of spec first to give to the coding agent. So the general principle of spec-first is definitely valuable in many situations, and the different approaches of how to structure that spec are very sought after. They are among the top most frequently asked questions I hear at the moment from practitioners: “How do I structure my memory bank?”, “How do I write a good specification and design document for AI?”.

But the term “spec-driven development” isn’t very well defined yet, and it’s already semantically diffused. I’ve even recently heard people use “spec” basically as a synonym for “detailed prompt”.

Regarding the tools I’ve tried, I have listed many of my questions about their real world usefulness here. I wonder if some of them are trying to feed AI agents with our existing workflows too literally, ultimately amplifying existing challenges like review overload and hallucinations. Especially with the more elaborate approaches that create lots of files, I can’t help but think of the German compound word “Verschlimmbesserung”: Are we making something worse in the attempt of making it better?

Böckeler, Birgitta. "How to tackle unreliability of coding assistants." Exploring Generative AI, martinfowler.com, 29 November 2023.
https://martinfowler.com/articles/exploring-gen-ai/08-how-to-tackle-unreliability.html

https://speakerdeck.com/birgitta410/state-of-play-ki-unterstutzte-programmierung-oop-2026-keynote

Posted by her on Speaker Deck on 13 February 2026. Slides only, and in German (which makes sense — OOP in Munich, German-speaking audience). She also lists it on her own publications page at birgitta.info.


The article: https://martinfowler.com/articles/exploring-gen-ai/harness-engineering-memo.html (17 February 2026) — same series, fully public.

Want me to pull that one?



I thotght


