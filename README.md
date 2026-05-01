# BOOK Projekt

## Title: Beyond the Model
## Subtitle: AI-Enhanced Software Design and Architecture

## Author: Annegret Junker

The book project is written as markdowns whereas we use one markdown per chapter.
The markdowns are located in the `chapters` folder. The book is structured in five parts, each part has a folder of its own. The markdowns are named according to the following pattern: `XX-Chapter-Title/chapter.md` where `XX` is the chapter number and `Chapter-Title` is a short title describing the content of the chapter.

Images and other assets are collected in an asset folder below the chapter folder. The images are named according to the following pattern: `XX-chapter-image-name.png` where `XX` is the chapter number.

The markdowns are written as text whereas for each sentence a row is used. New sentences are written in a new row to make it easier to track changes and to use the markdowns as input for AI-based writing assistants. The markdowns are written in a way that they can be easily converted to other formats such as Word using Pandoc.

The pandoc command can be find in [/templates/pandoc.md](./templates/pandoc.md). The command can be used to convert the markdowns to Word documents for review and editing. 
The necessary format templated is stored below [/templates/TemplateDddMeetsAi.docx](./templates/TemplateDddMeetsAi.docx) and can be used to create the Word documents with the correct formatting.
Further needed formatting e.g. for code samples etc. need to be added to the template document.
The pandoc command creates a word document for the entire book BookDddMeetsAi.docx. For review and editing purposes it can be useful to create word documents for each chapter separately. This can be done by changing the pandoc command to only include the markdown of the chapter you want to convert.