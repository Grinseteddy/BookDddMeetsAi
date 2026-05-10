# KI als Design-Partner — Drafter, Validator, Provocateur

*Teil der Serie* **Domain-Driven Design Meets AI**.
Der vorherige Beitrag stellte den [Synergetic Blueprint](https://www.codecentric.de/en/knowledge-hub/blog/the-synergetic-blueprint-revisited-and-why-ai-changes-everything) als strukturierten Prozess vor, der DDD-Methoden zu einem zusammenhängenden End-to-End-Design-Flow verbindet, und legte dar, dass KI jeden seiner Schritte ergänzt.
Dieser Beitrag konzentriert sich auf die Frage, die sich unmittelbar daraus ergibt: **Was genau tut KI innerhalb eines Blueprint-Schritts — und was bedeutet es, wenn wir sagen, KI „ergänzt" die Arbeit?**

---

## Die falsche Frage

Wenn Teams beginnen, KI für Design-Arbeit einzusetzen, lautet die erste Frage gewöhnlich: *Was kann die KI für uns tun?*

Das ist die falsche Frage.
Die Antwort ist zu allgemein, um nützlich zu sein: KI kann zusammenfassen, generieren, kritisieren, übersetzen, klassifizieren, validieren und ein Dutzend weiterer Dinge — oft innerhalb derselben Konversation.
Die Frage danach, was KI *kann*, verleitet das Team dazu, alles auf das Modell zu werfen und zu hoffen, dass etwas Nützliches zurückkommt.
Genau so landen wir bei selbstbewusst generiertem Unsinn mitten in einem ansonsten rigorosen Design-Prozess.

Eine bessere Frage lautet: *Welche Rolle spielt KI in unserem Entwicklungsprozess in diesem Augenblick?*

Wenn die Rolle benannt ist, weiß das Team, was es vom Output erwarten kann, worauf es achten und wogegen es Einspruch erheben sollte.
Wenn die Rolle unbenannt bleibt, fühlt sich jede KI-Antwort wie ein Orakelspruch an, und das Team vertraut ihr entweder zu sehr oder verwirft sie ganz.

Drei Rollen decken fast alles ab, was KI innerhalb des Synergetic Blueprints tut: **Drafter**, **Validator** und **Provocateur**.
Sie sind nicht neu.
Jedes Design-Team brauchte immer jemanden, der entwirft, jemanden, der validiert, und jemanden, der herausfordert.
Neu ist, dass jede Rolle nun entweder von einem Menschen oder von einer KI ausgefüllt werden kann — die Rolle bleibt dieselbe, nur der Akteur ändert sich.

>Entscheidend ist hier, dass 'entweder ... oder'. 
> Ähnlich wie bei Menschen kann man entweder Entwerfer oder Kritiker sein, aber nicht beides gleichzeitig.
> Es ist schwierig, eine Idee zu entwerfen und sie gleichzeitig kritisch zu hinterfragen.
>Es ist einfacher, sich auf eine Rolle zu konzentrieren und eine andere Person die andere Rolle ausfüllen zu lassen.


Die interessante Frage ist nicht, welche Rolle der KI entlang des Synergetic-Blueprint-Prozesses gehört, sondern: **Wer füllt in diesem Schritt welche Rolle aus, und warum?**

---

## Die drei Rollen im Detail

### Drafter
Der Drafter erzeugt einen Erstentwurf eines Artefakts: eine vorgeschlagene Domain Story, eine OpenAPI-Spezifikation, eine Service-Implementierung.
Der Output des Drafters ist konkret genug, um falsch zu sein.
Genau diese Konkretheit ist der Punkt: Ein falscher, aber spezifischer Entwurf lässt sich schneller bewerten, bearbeiten oder verwerfen, als eine leere Seite von Grund auf zufüllen ist.
Der Drafter trifft keine Entscheidungen; der Drafter erzeugt Material, über das Entscheidungen getroffen werden können.

### Validator
Der Validator prüft Artefakte auf interne Konsistenz und auf Übereinstimmung mit dem, was bereits bekannt ist.
Stimmt der Begriff *Meal* in der neuen EventStorming-Session mit dem *Meal* im Visual Glossary überein, oder ist er gedriftet?
Setzt die OpenAPI-Spezifikation die im Visual Glossary dokumentierte Ubiquitous Language ein?
Gibt es in der Context Map Bounded Contexts, die weder im Domain Storytelling noch im EventStorming je erwähnt wurden?
Validierung ist Vergleichsarbeit — neue Artefakte werden gegen den bereits angesammelten Bestand geprüft, und Abweichungen werden markiert.

### Provocateur
Der Provocateur stellt Fragen, legt Annahmen offen und fordert Entscheidungen heraus, solange sie noch abwandelbar sind.
*Haben Sie den Fall bedacht, dass zwei Köche gleichzeitig dasselbe Rezept veröffentlichen?
Warum ist Lieferung ein eigener Bounded Context und nicht eine Geschäftsfähigkeit von Teilen?
Was passiert, wenn die Lieferanten-API eine Woche lang nicht verfügbar ist?*
Der Provocateur entwirft keine Alternativen und prüft keine Konsistenz.
Der Provocateur zwingt das Team, Entscheidungen zu verteidigen, die es im Begriff war, implizit zu treffen.

Die Rollen sind unterscheidbar.
Ein Drafter, der zusätzlich Fragen stellt, erledigt zwei Aufgaben in einem Zug.
Ein Validator, der Alternativen vorschlägt, hat aufgehört zu validieren und begonnen zu entwerfen.
Die Klarheit ergibt sich daraus, jeden Zug separat zu benennen, auch wenn die Konversation alle drei enthält.

---

## Rollen sind Positionen, keine Akteure

Hier ist der Schritt, der ändert, wie KI in den Blueprint passt: **Die drei Rollen sind Positionen, keine Akteure.**
Entweder ein Mensch oder eine KI kann jede von ihnen ausfüllen, und die richtige Antwort hängt vom Blueprint-Schritt, dem Artefakt und davon ab, was bereits bekannt ist.

Das klingt einfach.
So arbeiten die meisten Teams in der Praxis aber nicht.
Die übliche Annahme lautet: KI ist „der Generator" und Menschen sind „die Prüfer".
Diese Annahme ist in beide Richtungen falsch.
Es gibt Blueprint-Schritte, in denen KI nicht entwerfen kann, weil die Arbeit Wissen erfordert, das KI nicht hat.
Es gibt Blueprint-Schritte, in denen Menschen nicht entwerfen sollten, weil die Arbeit mechanisch ist und KI sie schneller und konsistenter erledigt.
Validator und Provocateur sind ähnlich verteilt — mal validiert die KI, mal die Menschen; mal ist die KI der Advocatus Diaboli, mal der erfahrenste Architekt im Team.

Die folgende Abbildung zeigt, wie sich diese Rollen über den Synergetic Blueprint verteilen.
Die primären Artefakte stehen links, die Rollenverteilung in der Mitte, die abgeleiteten Artefakte rechts.
Strategic Design oben in Blau, Tactical Design unten in Grün.

 ![Abbildung: Rollen entlang des Synergetic Blueprint — Drafter, Validator, Provocateur, mit Mensch- und KI-Icons, die zeigen, wer in jedem Schritt welche Rolle ausfüllt](./images/DddMeetsAi.jpg)

Das Diagramm ist absichtlich gestrafft.
Es kommuniziert drei Dinge gleichzeitig: Welche Artefakte der Blueprint erzeugt, welche Rollenverteilung in jedem Schritt gilt, und wie sich diese Verteilung verschiebt, während die Arbeit von der Ideenfindung zu lauffähiger Software fortschreitet.
Drei Muster lohnen sich näher zu betrachten.

---

## Muster 1: KI kann keine wirklich neue Idee entwerfen

Am oberen Ende des Blueprint — North Star und Business Plan — sind Menschen die Drafter und KI ist der Provocateur.
Das ist keine stilistische Entscheidung.
Es ist eine prinzipielle Grenze dessen, was KI tun kann.

Wenn eine Geschäftsidee wirklich neu ist, enthalten die Trainingsdaten der KI sie nicht.
KI kann nichts generieren, was sie nie gesehen hat.
Alles, was KI für einen North Star vorschlägt, wird eine Rekombination existierender Muster sein — was für Benchmarking nützlich ist, aber aktiv in die Irre führt, wenn das Team versucht, etwas zu bauen, das die Welt noch nicht gesehen hat.
**Wenn KI Ihren North Star entwerfen kann, ist Ihr North Star nicht neu.**
In Brownfield-Projekten kann das hilfreich sein, in Greenfield-Projekten ist es das nicht.

Das bedeutet nicht, dass KI in dieser Phase nutzlos wäre.
KI ist außergewöhnlich gut als Provocateur in der Ideenfindung.
*Welche Kundensegmente ignorieren Sie?
Welches Erlösmodell hat jeder Zwei-Richtungs-Marktplatz irgendwann übernommen, und warum haben Sie es ausgeschlossen?
Was sind die drei häufigsten Gründe, weshalb Plattformen in Ihrem Bereich in den ersten zwei Jahren scheitern?*
Solche Fragen legen Annahmen offen, die das Team sonst implizit gelassen hätte.
Die Trainingsdaten der KI — genau dieselben, die sie als Drafter disqualifizieren — sind genau das, was sie zu einem starken Provocateur macht.
Sie hat mehr gescheiterte Businesspläne gelesen, als ein Mensch jemals lesen kann.

Wenn der Blueprint Domain Storytelling erreicht, sind die neuartigen Entscheidungen bereits getroffen.
Das Team hat entschieden, was es baut.
Die Arbeit verschiebt sich von „Was soll das sein?“ zu „Wie funktioniert es?“, und KI kann die Antwort mitentwerfen.
Eine Domain Story für CookWithUs hat Akteure (Koch, Unbekannter Benutzer), Arbeitsobjekte (Rezept, Zutaten, Bewertung) und Aktivitäten (veröffentlichen, bewerten, teilen).
Keines davon ist eine Domain-Erfindung; es sind Domain-*Ausdrücke*.
KI hat genug Rezept-Teilen-Plattformen gesehen, um eine Kandidaten-Domain-Story zu entwerfen, die das Team in Minuten bearbeiten kann, statt sie über Stunden aufzubauen.

> Natürlich kann KI das in spezifischen Domänen unter Umständen nicht leisten.
> Dann bleibt aber die Rolle des Provokateurs für KI reserviert.

Die Übergabe vom Menschen als alleinigem Drafter zum gemeinsamen Entwerfen geschieht im Blueprint genau an der Grenze zwischen *Vorhabendefinition* und *Ausarbeitung*.

---

## Muster 2: Der Prototyp als wiederkehrendes Validierungsinstrument

Drei Zeilen im Diagramm sind mit *Prototype* beschriftet — sie folgen auf Domain Storytelling, auf Big Picture EventStorming und auf die User- und API-Journey.
In jeder dieser Zeilen ist KI der Drafter und Menschen sind der Validator.
Das ist ein Muster, das es zu benennen lohnt.

Ein Prototyp ist nicht das auszuliefernde Artefakt.
Das validierte vorgelagerte Artefakt, etwa die Domain Story, ist es.
Der Prototyp ist das *Instrument, das Validierung erst möglich macht*.

Eine Domain Story auf einem Miro-Board ist schwer zu validieren.
Das Team stimmt ihr zu, weil es sie selbst entwickelt hat.
Eine Domain Story, die in einen lauffähigen API-Prototyp mit Stubs für Endpoints und Beispielantworten überführt wurde, ist leichter zu validieren, weil das Team ihm Fragen stellen kann.
*Was passiert, wenn ein Anonymous User versucht zu bewerten?
Akzeptiert das System ein Rezept ohne Zutaten?
Wenn zwei Köche denselben Rezept-Titel beanspruchen — was gibt die API zurück?*
Der Prototyp kann Lücken in der Domain Story offen legen, die vorher niemand bemerkt hat.

Dieselbe Schleife läuft nach EventStorming und nach der User- und API-Journey ab.
Jedes Mal entwirft KI einen reichhaltigeren Prototyp, weil die vorgelagerten Artefakte reichhaltiger sind, und jedes Mal validieren die Menschen etwas anderes.
Der erste Prototyp testet die Domain Story.
Der zweite testet die Grenzentscheidungen und den Event-Fluss.
Der dritte Protoyp testet die API- oder User-Journey.
Das wurde empirisch in unserer veröffentlichten drei-Iterations-Prototyping-Pipeline für [CookWithUs](https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype) gezeigt — reichhaltigere Artefakte erzeugten in jedem Schritt messbar vollständigere Prototypen.

Die Lektion ist struktureller Natur und nicht auf Prototypen beschränkt.
Über den gesamten Blueprint hinweg ist der nachgelagerte Entwurf der KI oft die Linse, durch die Menschen ihren vorgelagerten Entwurf validieren.
Ohne den Prototyp kann die Domain Story falsch sein, ohne dass es jemand bemerkt.
Mit ihm wird mögliche Fehlerhaftigkeit sichtbar.

---

## Muster 3: Die taktische Umkehrung

In der unteren Hälfte des Diagramms ist die Rollenverteilung gegenüber der oberen Hälfte umgekehrt.
KI ist der Drafter für Context Maps, Domain Models, API Product Canvases, Design-Level EventStorming und Code.
Menschen sind Validator und Provocateur.

Diese Umkehrung ist nicht willkürlich.
Sie ergibt sich aus der Struktur des Blueprint.
Tactical Design ist dem Strategic Design nachgelagert.
Wenn das Team ein Domänenmodell entwirft, liegen bereits Artefakte wie das Visual Glossary, das EventStorming-Board, die Context Map und die API-Journey vor.
KI verfügt nun über einen reichen, projektspezifischen Kontext, der in der oberen Hälfte des Blueprint nicht existierte.
Mit diesem Kontext kann KI taktische Artefakte mit hoher Zuverlässigkeit entwerfen: Events in Aggregat-Kandidaten gruppieren, Entitäten von Value Objects unterscheiden, Context-Map-Integrationsmuster mit expliziter Begründung vorschlagen, OpenAPI-Endpoints aus Aggregaten ableiten.

Was Menschen in dieser Phase einbringen, ist Urteilsvermögen.
Die Aggregat-Grenzen, die die KI vorschlägt, sind *plausibel* — aber plausibel ist nicht dasselbe wie *richtig*.
Ob *ShoppingItem* eine Entität innerhalb des *ShoppingList*-Aggregats ist oder ein Value Object, das die Liste enthält, ist eine Domänenentscheidung, keine strukturelle — und KI kann sie nicht treffen.
Die menschliche Rolle wird zum Provocateur: gegen den Entwurf der KI argumentieren, für jede Grenze eine Begründung verlangen, Invarianten zurückweisen, die vernünftig aussehen, aber Geschäftsregeln widersprechen.

Der Blueprint schreitet voran von „Menschen entwerfen, KI provoziert" über „Menschen und KI entwerfen gemeinsam“ zu „KI entwirft, Menschen provozieren“.
Die Rollen bleiben dieselben; die Akteure, die sie ausfüllen, wechseln.

---

## Was sich durchzieht

Der Validator wandert nicht mit dem Blueprint mit, wie es Drafter und Provocateur tun.
Validierung läuft kontinuierlich und gleicht jedes neue Artefakt mit allem ab, was vorher kam.

In CookWithUs erschien der Begriff *Making* in der ursprünglichen Domain Story und wurde später im überarbeiteten Visual Glossary in *HowTo* umbenannt.
Eine solche Umbenennung ist die Art von Änderung, die sich stillschweigend durch nachfolgende Artefakte fortpflanzt, wenn es niemand prüft.
KI als Validator kann jedes nachgelagerte Artefakt scannen — EventStorming-Stickies, OpenAPI-Felder, Domain-Model-Code, API-Product-Canvas-Einträge — und jede Stelle markieren, an der *Making* noch erscheint.
Das ist mechanische Arbeit, die bei jeder Änderung von Hand zu teuer wäre — und genau die Art von Arbeit, die KI zuverlässig erledigt.

Validierung hat einen anderen Rhythmus als Drafting oder Provocation.
Drafting geschieht am Anfang jedes Blueprint-Schritts.
Provocation geschieht mittendrin, während Entscheidungen noch weich sind.
Validierung geschieht *die ganze Zeit*, im Hintergrund, als Disziplin.
Es ist die Rolle, die am ehesten stillschweigend vergessen wird — und diejenige, deren Fehlen die größten nachgelagerten Schulden erzeugt.

---

## Das Kernargument

Die drei Rollen — Drafter, Validator, Provocateur — geben dem Team ein Vokabular für KI-unterstütztes Modellieren, das präziser ist als „KI für X einsetzen“ und flexibler als „KI ersetzt Y“.
Sie benennen, was in jedem Zug der Konversation geschieht, und verteilen Verantwortung angemessen zwischen Menschen und KI.

Das tiefere Argument handelt von *Position*, nicht spezifisch von KI.
**Während der Blueprint voranschreitet, ändern sich die Rollen nicht. Wer sie ausfüllt, ändert sich.**
Menschen entwerfen am oberen Ende, weil Neuheit in Menschen lebt.
Menschen und KI entwerfen in der Mitte gemeinsam, weil Ausdruck sowohl von Domänenwissen als auch von Mustererkennung profitiert.
KI entwirft im Tactical Design, weil die strategischen Artefakte nun genug Kontext liefern, damit KI zuverlässig ist.
Validator und Provocateur laufen durchgängig mit, wobei der Akteur davon abhängt, was geprüft und was hinterfragt wird.

Dieser Rahmen hat einen praktischen Nutzen.
Wenn ein Team sich zusammensetzt, um KI in einem Blueprint-Schritt einzusetzen, lautet die erste Frage nicht mehr: *Was kann KI hier für uns tun?*
Sondern: *Welche Rolle muss gerade besetzt werden, und ist KI oder ein Mensch im Moment besser dafür geeignet?*
Diese Frage hat eine Antwort.
Die andere meistens nicht.

*Als Nächstes in dieser Serie:* **Fünf Prinzipien für KI-unterstütztes DDD** *— das Collaboration Cheat Sheet, das die Rollenverteilung in eine funktionierende Disziplin überführt.
Wann KI-Output zu vertrauen ist, wann er hinterfragt werden muss, und wie der Mensch fest im Zentrum jedes Blueprint-Schritts bleibt.*

---

## Referenzen

Brandolini, A. (2023). *EventStorming*. Abgerufen von <https://www.eventstorming.com/>

Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley.

Hofer, S., & Schwentner, H. (2021). *Domain Storytelling: A Collaborative, Visual, and Agile Way to Build Domain-Driven Software*. Pearson International.

Junker, A. (2025). *Mastering domain-driven design*. BPB Publications.

Junker, A. (2026). *DDD Toolbox*. BPB Publications.

Junker, A. (2026, 4. März). *From stories to code: How domain storytelling and EventStorming give LLMs the context they need*. codecentric AG. <https://www.codecentric.de/en/knowledge-hub/blog/from-stories-to-code-how-domain-storytelling-and-eventstorming-give-llms-the-context-they-need>

Junker, A. (2026, 2. April). *From domain story to prototype: Specification-driven prototyping in DDD workshops*. codecentric AG. <https://www.codecentric.de/en/knowledge-hub/blog/from-domain-story-to-prototype>

Junker, A., & Lazzaretti, F. (2025). *Crafting great APIs with domain-driven design*. Apress.

Zörner, S. (2015). *Softwarearchitekturen dokumentieren und kommunizieren*. München: Carl Hanser Verlag.
