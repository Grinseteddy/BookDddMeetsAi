# Der Synergetic Blueprint revisited — und warum KI alles verändert

*Warum deine DDD-Workshops KI brauchen — und deine KI DDD braucht*

## Vom Workshop zur laufenden Software — die Lücke, über die niemand spricht

Die meisten Teams, die Domain-Driven Design einführen, investieren stark in Workshops. Domain Storytelling Sessions, EventStorming Boards, Context-Mapping-Übungen — die Zusammenarbeit ist echt und die Erkenntnisse sind wertvoll. Aber es gibt eine hartnäckige Lücke zwischen dem, was im Workshop entdeckt wird, und dem, was am Ende in der Software landet.

Das Miro Board wird exportiert. Die Sticky Notes werden fotografiert. Und dann kehrt das Entwicklungsteam zur Arbeit zurück und baut Software, die sehr ähnlich aussieht wie das, was es auch ohne den Workshop gebaut hätte. Das fühlt sich jeden Tag schmerzhaft an.

Das ist kein Workshop-Problem. Es ist ein Prozess-Problem. DDD bietet mächtige Patterns und Methoden (Evans, 2003), aber ohne einen kohärenten End-to-End-Prozess, der sie verbindet, tendieren Teams dazu, die Werkzeuge isoliert einzusetzen — etwas Domain Storytelling hier, etwas Bounded Context Denken dort — ohne den strukturierten Faden, der einzelne Techniken in einen kohärenten Design-Flow verwandelt.

Das Synergetic Blueprint ist dieser Faden. Diese Serie zeigt, wie KI jeden Schritt davon unterstützt.

---

## Das Synergetic Blueprint auf einen Blick

Das Synergetic Blueprint ist ein strukturierter Prozess zur Anwendung von Domain-Driven Design — von der ersten Unterhaltung über Business Intent bis hin zu laufender, getesteter und dokumentierter Software, sowohl im Strategic als auch im Tactical Design.

![Tactical Design](https://eu-central-1.graphassets.com/AiE4QoWSSiIQO3k152ugkz/cmo7eudkguf2e06uut5sfcfsc)

![TacticalDesign.jpg](https://eu-central-1.graphassets.com/AiE4QoWSSiIQO3k152ugkz/cmo7evicbugpq06uuld9xyseg)

Der Prozess wurde in *Mastering Domain-Driven Design* (Junker, 2025) eingeführt und in *DDD Toolbox* (Junker, 2026) erweitert. Er diente auch als Leitfaden in *Crafting Great APIs with Domain-Driven Design* (Junker & Lazzaretti, 2025), wo er die Reise von der Domain-Entdeckung bis zum Design synchroner und asynchroner APIs strukturiert. Diese Serie baut auf allen drei Büchern auf — aber du musst keines davon gelesen haben, um ihr zu folgen. Alles Notwendige wird hier eingeführt.

Der Blueprint organisiert DDD-Methoden in vier Zonen über zwölf Schritte:

**Strategic Design — Ideation (Schritte 1–3)**

Ein Produktentwicklungs- oder Modernisierungsprojekt beginnt typischerweise mit einer Ideationsphase. Die Etablierung eines North Stars — einer leitenden Vision für das Produkt — durch Brainstorming oder Brainwriting hilft dabei, Business Capabilities zu priorisieren (Millet & Tune, 2015). Business Capabilities werden mithilfe eines Business Model Canvas (Strategyzer, 2023) und eines Impact Mappings (Adzic, 2012) identifiziert und anschließend mit einer Capability Map oder einer Wardley Map (Wardley, 2022) priorisiert. Das Ergebnis dieser Zone ist eine priorisierte Menge von Capabilities mit ersten skizzierten Domänengrenzen.

**Strategic Design — Requirements (Schritte 4–7)**

Business-Experten und IT-Spezialistinnen arbeiten zusammen, um Anforderungen zu erheben und eine Ausrichtung zwischen geschäftlichen und technischen Zielen zu erreichen. Domain Storytelling macht sichtbar, wie das Business tatsächlich funktioniert (Hofer & Schwentner, 2021). Die Ubiquitous Language wird in einem Visual Glossary dokumentiert (Zörner, 2015). EventStorming (Brandolini, 2023) deckt Bounded Contexts und Domain Events auf. Event Modeling beschreibt User- und API-Journeys (Dilger, 2025). Das Ergebnis dieser Zone ist ein validierter Satz von Anforderungen mit einer gemeinsamen Sprache und Bounded Context-Kandidaten.

**Strategic Design — Solution Design (Schritt 8)**

Mit den Anforderungen in der Hand kann das Solution Design beginnen. Eine Context Map zeigt, wie Bounded Contexts miteinander und mit externen Systemen in Beziehung stehen (Evans, 2003), wobei für jede Beziehung Integrationspatterns definiert werden. Service-Definitionen, API-Verträge und Event-Schemas werden aus den vorgelagerten Artefakten abgeleitet. Das Ergebnis dieser Zone ist eine vollständige, zu den Anforderungen rückverfolgbare Architekturspezifikation.

**Tactical Design (Schritte 9–12)**

Für jeden Bounded Context wird das Domain Model mithilfe der Patterns Aggregate, Entity und Value Object definiert, basierend auf dem Visual Glossary aus der Requirements-Zone. REST-APIs und Domain Events werden z.B. in einem API-Product-Canvas (Junker & Lazzaretti, 2025) entworfen. Acceptance Criteria werden mithilfe von Example Mapping (Smart & Molak, 2023) spezifiziert. Services und Repositories werden implementiert und in einem Architecture Communication Canvas dokumentiert (arc42, 2024). Das Ergebnis dieser Zone ist laufende, getestete Software.

*Ein wichtiger Hinweis: Die Schrittnummern sind eine Lesereihenfolge, nicht eine Ausführungsreihenfolge*. In der Praxis formen Entdeckungen in späteren Schritten regelmäßig frühere um. Eine EventStorming-Session kann eine Lücke in der Capability Map aufdecken. Eine Tactical-Design-Entscheidung kann einen fehlenden Bounded Context sichtbar machen. Das Blueprint bietet eine kohärente Struktur, um über diese Iterationen nachzudenken — kein sequenzielles Wasserfallmodell, dem man starr folgt.

---

## Was KI zum Blueprint beiträgt

Die Blueprint-Schritte ändern sich nicht, wenn KI ins Spiel kommt. Was sich ändert, sind die Qualität und die Geschwindigkeit der Arbeit in jedem Schritt.

Drei konkrete Beiträge sind es wert, benannt zu werden:

**KI löst das Cold-Start-Problem.** Jede Modeling Session hat ein Cold-Start-Problem — das leere Miro-Board, die leere EventStorming-Wand, der erste Versuch einer Capability-Map ohne Ausgangspunkt. KI kann einen ersten Entwurf von Kandidaten für Events, eine Skeleton Capability Map oder eine vorgeschlagene Bounded Context-Dekomposition generieren. Diese Entwürfe sind keine Antworten; sie sind Provokationen. Das Team reagiert auf einen ersten Entwurf, anstatt bei Null zu beginnen — und diese Reaktion ist konsistent schneller und reichhaltiger als ein Cold Start.

**KI beschleunigt die Artefakt-Pipeline**. Wir haben dies empirisch anhand von CookWithUs, der Rezept-Sharing-Plattform, die als durchgehendes Beispiel in dieser Serie dient, demonstriert. In einem veröffentlichten Prototyping-Experiment mit drei Iterationen (Junker, 2026a; 2026b) erzielten reichhaltigere Domain-Artefakte messbar bessere KI-Outputs in jedem der Schritte. Eine Domain Story und ein Visual Glossary erzeugten einen funktionierenden API-Prototyp. Das Hinzufügen eines EventStorming-Boards führte zu einem vollständigeren Prototyp mit korrekt codierten Business Rules. Die Aufteilung in Bounded-Context-spezifische OpenAPI-Spezifikationen führte zu einer Frontend-Anwendung, in der jedes Feld und jedes Label direkt auf eine Sticky Note oder ein Piktogramm zurückverfolgt werden konnten. Je besser die Artefakte, desto besser der KI-Output.

**KI validiert Konsistenz.** Die Ubiquitous Language ist das wertvollste Artefakt, das der Blueprint produziert — und das schwierigste, über Sessions hinweg aufrechtzuerhalten. Wenn dasselbe Konzept unter zwei verschiedenen Namen auftaucht, wenn die Bedeutung eines Begriffs zwischen Bounded Contexts wechselt, wenn ein Feldname in einer API-Spezifikation nicht mit dem Glossary übereinstimmt — KI identifiziert diese Inkonsistenzen zuverlässig über den gesamten Umfang der Artefakte hinweg. Nicht weil KI die Domäne versteht, sondern weil KI entstandene Artefakte systematisch an einem Maßstab vergleichen kann, der eine praktische menschliche Überprüfung zu aufwändig wäre.

Was KI nicht kann, ist ebenso wichtig herauszustellen. KI weiß nicht, welche Bounded Contexts real sind gegenüber solchen, die nur funktionale Gruppierungen darstellen. Sie weiß nicht, ob die Versionierung von Rezepten eine echte Business-Anforderung ist. Sie weiß nicht, ob ein bestimmter Begriff umbenannt werden sollte, bis ein Domänenexperte entscheidet. KI kann Aggregate-Grenzen nicht gegen Business Rules validieren, die sie noch nie gesehen hat.

Das menschliche Urteilsvermögen im Zentrum jedes Blueprint-Schritts ist nichts, was durch KI ersetzt werden kann. Es ist das, was den Bau von Software erst wertvoll macht.

---

## Das durchgehende Beispiel: CookWithUs

Jedes Konzept in dieser Serie wird anhand von CookWithUs illustriert, einer Rezept-Sharing-Plattform, die bereits entwickelt und empirisch untersucht wurde (Junker, 2026a; 2026b). Es ist kein hypothetisches Modell. Drei Prototyp-Iterationen existieren, die genau die Pipeline darstellen, die diese Serie beschreibt. Leserinnen und Leser, die den früheren codecentric-Posts zu diesem Thema gefolgt sind, werden die Domäne wiedererkennen.

Die Domäne in Kürze:

- **Akteure:** Cook, Anonymous User, Supplier
- **Schlüsselkonzepte:** Recipe, Rating, ShoppingList, Ingredient, HowTo
- **Kern-Business-Regeln:** Ein Cook kann sein eigenes Rezept nicht bewerten. Eine Rezept muss einen eindeutigen Titel haben.
- **Initiale Bounded Contexts:** Register, Sharing, Rating
- **Später entstehende Contexts:** Ingredient Sourcing, Supplier Integration

Die Domäne beginnt einfach und wächst in ihrer Komplexität, während die Serie voranschreitet. Wenn wir das Tactical Design erreichen, umfasst CookWithUs Lieferantenpartnerschaften, Zutatenbestellungen, diätetische Metadaten und Shopping-List-Generierung — genug Komplexität, um jede Pattern-Entscheidung bedeutungsvoll zu machen, in einer Domäne, die einfach genug ist, dass Leserinnen und Leser keine Energie aufwenden müssen, um das Business zu verstehen, bevor sie sich mit den Techniken beschäftigen können.

Ein Detail ist erwähnenswert: Das Konzept, das im Domain Story ursprünglich *Making* hieß, wurde im verfeinerten Visual Glossary in *HowTo* umbenannt. Diese Umbenennung illustriert genau, warum die Pflege der Ubiquitous Language wichtig ist — und genau die Art von Änderung, die KI zuverlässig über einen wachsenden Satz von Artefakten nachverfolgen kann.

---

## Das zentrale Argument

Das Argument dieser Serie ist einfach: **KI ersetzt den Synergetic Blueprint nicht**. Er macht die Ambitionen des Blueprints in der Praxis umsetzbar.

Das Cold-Start-Problem, das Konsistenzproblem, das Dokumentationsproblem — das sind keine neuen Probleme. DDD hat sie vor mehr als zwanzig Jahren identifiziert, und der Blueprint ist eine strukturierte Antwort darauf. Was KI hinzufügt, ist ein praktischer Weg, diese Probleme im Tempo und im Maßstab zu adressieren, die die moderne Softwareentwicklung erfordert.

Der Rest dieser Serie ist die Demonstration dieses Anspruchs — Schritt für Schritt, Artefakt für Artefakt, mit CookWithUs als rotem Faden.

*Weiter in dieser Serie: **KI als Design-Partner** — die drei Rollen, die KI im Blueprint spielt, wo sie versagt, und das mentale Modell, das du brauchst, um sie effektiv einzusetzen.*

---

## Referenzen

Architecture Communication Canvas. (2024). Retrieved October 2024, from arc42: https://canvas.arc42.org/architecture-communication-canvas

Adzic, G. (2012). *Impact Mapping: Making a big impact with software products and projects*. Provoking Thoughts.

Brandolini, A. (2023). EventStorming. Retrieved 04 2024, from EventStorming: https://www.eventstorming.com/

Dilger, M. (2025). *Understanding Event Sourcing: Planning and Implementing Scalable Systems with Event Modeling and Event Sourcing*. Self-published.

Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley.

Hofer, S., & Schwentner, H. (2021). *Domain Storytelling: A Collaborative, Visual, and Agile Way to Build Domain-Driven Software*. Pearson International.

Junker, A. (2025). *Mastering domain-driven design*. BPB Publications.

Junker, A. (2026). *DDD Toolbox*. BPB Publications.

Junker, A. (2026, March 4). *From stories to code: How domain storytelling and EventStorming give LLMs the context they need*. codecentric AG. https://www.codecentric.de/en/knowledge-hub/blog/from-stories-to-code-how-domain-storytelling-and-eventstorming-give-llms-the-context-they-need

Junker, A. (2026, April 2). *From domain story to prototype: Specification-driven prototyping in DDD workshops*. codecentric AG. https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype

Junker, A., & Lazzaretti, F. (2025). *Crafting great APIs with domain-driven design*. Apress.

Millet, S., & Tune, N. (2015). *Patterns, Principles, and Practices of Domain-Driven Design*. Indianapolis, IN: Wrox.

Smart, J. F., & Molak, J. (2023). *BDD in Action Second Edition*. Shelter Island, NY: Manning.

Strategyzer. (2023). *The Business Model Canvas*. Retrieved January 2024, from Strategyzer: https://www.strategyzer.com/library/the-business-model-canvas

Wardley, S. (2022). *Wardley Maps*. Simon Wardley.

Zörner, S. (2015). *Softwarearchitekturen dokumentieren und kommunizieren, Entwürfe, Entscheidungen und Lösungen nachvollziehbar und wirkungsvoll festhalten*. München: Carl Hanser Verlag.