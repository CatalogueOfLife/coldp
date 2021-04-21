# Citations

The metadata of a dataset contains various fields that can be used to format a citation for the dataset.
The metadata field names for a citation are based on [BibTeX entry keys](https://en.wikipedia.org/wiki/BibTeX#Entry_types).
The fields can be used at the top level of the metadata to cite the dataset itself, but also as fields on the `source` list.


## Supported BibTeX Fields
 - `id` identifier for the reference
 - `doi` DOI for the reference. Can be in addition to another identifier used as the ID above
 - `author` The name(s) of the author(s) as Person objects with familyName & givenName
 - `editor` The name(s) of the editor(s) as Person objects
 - `title` The title of the work
 - `booktitle` The title of the book, if only part of it is being cited
 - `journal` The journal or magazine the work was published in
 - `year` The year of publication (or, if unpublished, the year of creation)
 - `month` The month of publication (or, if unpublished, the month of creation)
 - `series` The series of books the book was published in
 - `volume` The volume of a journal or multi-volume book
 - `number` The "(issue) number" of a journal or magazine if applicable. Note that this is not the "article number" assigned by some journals`.
 - `edition` The edition of a book, long form (such as "First" or "Second")
 - `chapter` The chapter number
 - `pages` Page numbers, separated either by commas or double-hyphens.
 - `publisher` The publisher's name
 - `institution` The institution that was involved in the publishing, but not necessarily the publisher
 - `address` Publisher's address (usually just the city, but can be the full address for lesser-known publishers)


## Existing Standards
A quick review of other existing standards and their literature fields:

### BibTeX

See https://en.wikipedia.org/wiki/BibTeX#Entry_types

#### Entry Types

 - `article` An article from a journal or magazine.
 - `book` A book with an explicit publisher.
 - `booklet` A work that is printed and bound, but without a named publisher or sponsoring institution.
 - `conference` The same as inproceedings, included for Scribe compatibility.
 - `inbook` A part of a book, usually untitled. May be a chapter (or section, etc.) and/or a range of pages.
 - `incollection` A part of a book having its own title.
 - `inproceedings` An article in a conference proceedings.
 - `manual` Technical documentation.
 - `mastersthesis` A master's thesis.
 - `misc` For use when nothing else fits.
 - `phdthesis` A Ph.D. thesis.
 - `proceedings` The proceedings of a conference.
 - `techreport` A report published by a school or other institution, usually numbered within a series.
 - `unpublished` A document having an author and title, but not formally published.


#### Fields
 - `doi` digital object identifier

 - `author` The name(s) of the author(s) (in the case of more than one author, separated by and)
 - `editor` The name(s) of the editor(s)
 
 - `title` The title of the work
 - `booktitle` The title of the book, if only part of it is being cited
 - `journal` The journal or magazine the work was published in

 - `year` The year of publication (or, if unpublished, the year of creation)
 - `month` The month of publication (or, if unpublished, the month of creation)
 - `series` The series of books the book was published in (e.g. "The Hardy Boys" or "Lecture Notes in Computer Science")
 - `volume` The volume of a journal or multi-volume book
 - `number` The "(issue) number" of a journal, magazine, or tech-report, if applicable. Note that this is not the "article number" assigned by some jo`urnals`.
 - `edition` The edition of a book, long form (such as "First" or "Second")
 - `chapter` The chapter number
 - `pages` Page numbers, separated either by commas or double-hyphens.

 - `publisher` The publisher's name
 - `institution` The institution that was involved in the publishing, but not necessarily the publisher
 - `address` Publisher's address (usually just the city, but can be the full address for lesser-known publishers)

 
Uncommon
 - `annote` An annotation for annotated bibliography styles (not typical)
 - `type` The field overriding the default type of publication (e.g. "Research Note" for techreport, "{PhD} dissertation" for phdthesis, "Section" for in`book`/incollection)
 - `email` The email of the author(s)
 - `crossref` The key of the cross-referenced entry
 - `organization` The conference sponsor
 - `howpublished` How it was published, if the publishing method is nonstandard
 - `note` Miscellaneous extra information
 - `school` The school where the thesis was written
 - `key` A hidden field used for specifying or overriding the alphabetical order of entries (when the "author" and "editor" fields are missing). Note that this is very different from the key (mentioned just after this list) that is used to cite or cross-reference the entry.



### EML 2.2
- Article
    - journal
    - volume
    - issue
    - pageRange
    - publisher
    - publicationPlace
    - ISSN
- Book
    - edition
    - numberOfVolumes
    - totalPages
    - totalFigures
    - totalTables
    - ISBN
- Chapter (InBook)
    - chapterNumber
    - editor
    - bookTitle
- Manuscript
    - institution
    - totalPages
...


