# Text-Tree publishing guide
This guide tries to provide help in publishing ColDP compliant data with the help of simple [text trees](https://github.com/gbif/text-tree).
TextTree is a very simple format, but can be extended in a flexible way:

> Abies alba Mill. [species] {PUB=Miller2019 ENV=terrestrial,marine REF=Döring2021,Banki2022 VERN=de:Traubeneiche,fr:Chêne rouvre,dk:Vintereg,nl:Wintereik}
> †Kalloprion kilmisteri [species] {PUB=Eriksson_2006 ENV=marine CHRONO=Llandovery-Wenlock}

This guide provides conventions how to share additional information using TextTree.
For interoperability with [ChecklistBank](https://www.checklistbank.org) and other taxonomic systems we encourage to use some common information keys and value formats.

Values are not allowed to contain whitespace. 
Instead an underscore is allowed in most fields, which should be decoded into a regular space upon reading.

The following keys do use verbatim values without underscore decoding:
 - **ID**: The identifier for the name usage. 
 - **PUB**: The key of a reference for the original publication of the name. The key should resolve to a reference given in an additional reference.[bib](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference-bibtex) or [json](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference-json-csl) file. See [ColDP](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference) for more information. 
 - **REF**: A list of reference keys to support the taxonomic opinion, concatenated by a comma. 
 - **LINK**: A [URL](/docs/README.md#link-3) linking to a webpage from the source with this name

 The following keys can use an underscore `_` instead of a space:
 - **ENV**: A list of [environments](/docs/README.md#environment) the species occurrs in, concatenated by a comma.
 - **VERN**: A list of vernacular names, concatenated by a comma, each given as languageCode:name. Example: ```VERN=de:Traubeneiche,fr:Chêne rouvre,dk:Vintereg```
 - **DIST**: A list of range distributions, concatenated by a comma. Each given as gazetteer:areaID:status. Example: ```DIST=iso:de:native,iso:fr:native```
 - **CHRONO**: A geochronological time range for the earliest-latest appearance of the taxon. The range is delimited by a hyphen, e.g. `Jurassic-Cretaceous`
 - **CODE**: [nomenclatural code](/docs/README.md#code) of the name
 - **NOM**: [nomenclatural status](/docs/README.md#status) of the name
 - **TYPE**: Type species or genus name, e.g. *Aster amellus*
 - **TM**: [Type material](/docs/README.md#typematerial) for the name as typeStatus:specimenCitation, multi value concatenated by | 
 - **EST**: Species estimate. Can be just a number for living species estimate, prefixed with the dagger symbol for extinct estimates or both: ```45000,†340```

Any other keys for accepted names will be treated as generic taxon properties.


## References
A `reference.bib` BibText or `reference.json` CSL-JSON file should accompany the text tree file 
to define the reference keys used in `PUB` or `REF` variables.

BibTex content can be retrieved from CrossRef for most DOIs when known.
For example by using curl on the terminal like this:
> curl --location --silent --header "Accept: application/x-bibtex" https://doi.org/10.1080/11035890601282097 

```
@article{Eriksson_2006,
    doi = {10.1080/11035890601282097},
    url = {https://doi.org/10.1080%2F11035890601282097},
    year = 2006,
    month = {jun},
    publisher = {Informa {UK} Limited},
    volume = {128},
    number = {2},
    pages = {97--101},
    author = {Mats E. Eriksson},
    title = {Polychaete jaw apparatuses and scolecodonts from the Silurian Ireviken Event interval of Gotland, Sweden},
    journal = {{GFF}}
}
```
