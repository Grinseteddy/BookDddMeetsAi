# BOOK Projekt

## Title: Beyond the Model
### Subtitle: AI-Enhanced Software Design and Architecture

### Author: Annegret Junker

The book project is written as markdowns whereas we use one markdown per chapter.
The markdowns are located in the `chapters` folder. The book is structured in five parts, each part has a folder of its own. The markdowns are named according to the following pattern: `XX-Chapter-Title/chapter.md` where `XX` is the chapter number and `Chapter-Title` is a short title describing the content of the chapter.

## ToDos

Mark todos with

```markdown
[//]: # (TODO Mark here the todo)

## Images and other assets

Images and other assets are collected in an asset folder below the corresponding chapter folder.
The images are named according to the following pattern: `XX-chapter-image-name.png` where `XX` is the chapter number.

The markdowns are written as text whereas for each sentence a row is used.
New sentences are written in a new row to make it easier to track changes and reviews.
The markdowns are written in a way that they can be easily converted to other formats such as Word using Pandoc.

## Pandoc

The pandoc command can be find in [/templates/pandoc.md](./templates/pandoc.md). The command can be used to convert the markdowns to Word documents for review and editing. 
The necessary format templated is stored below [/templates/TemplateDddMeetsAi.docx](./templates/TemplateDddMeetsAi.docx) and can be used to create the Word documents with the correct formatting.
Further needed formatting, e.g., for code samples need to be added to the template document.
The pandoc command creates a Word document for the entire book BookDddMeetsAi.docx.
For review and editing purposes, it can be useful to create Word documents for each chapter separately.
This can be done by changing the pandoc command to only include the markdown of the chapter you want to convert.

## Cites

Cites are handled per chapter. There is a central reference file [references.bib](./references.bib) which is used for all chapters in BibTex format.
Each chapter has its own bibliography section at the end of the chapter.
The bibliography section is created using a lua filter which collects all cites in the chapter and creates a bibliography section with the corresponding references from the central reference file using [IEEE style](./templates/ieee.csl).

Please be careful to order the keys alphabetically, so that doubles can be detected easily.
The keys should be ordered according to the following pattern: `AuthorYearTitle` where `Author` is the last name of the first author, `Year` is the year of publication and `Title` is a short title describing the content of the reference.

## Tables and Figures

Tables and figures need to be numbered manually.
The numbering follows the format 
'Table [Chapter Number]-[Table Number]' and
'Figure [Chapter Number]-[Figure Number]'.

The correct numbering in checked during build by [checker](./check.py) and the build will fail if the numbering is not correct.

Tables do not need special formatting.
It is done via lua script:
- [Table cells](./templates/table-cell-styles.lua)

Figures need to be formatted with the custom style 'Figure' which is defined in the template document. 
Figure captions need to be formatted with the custom style 'Figure Caption' which is defined in the template document too.

It is done via the lua scripts:
- [Chapter as header](./templates/chapter-as-header.lua) for chapter titles in headers
- [Header as chapter](./templates/header-as-chapter.lua) for chapter numbers in headers

## Body Text

Running text needs to be formatted with the custom style 'Body Text First' which is defined in the template document.

All those formatting is checked by [checker](./check.py) during build, and the build will fail if the formatting is not correct.

## Build

The build can be triggered with running
```bash
./build.sh
```

The result is in the root folder of the project as `BookDddMeetsAi.docx`. 