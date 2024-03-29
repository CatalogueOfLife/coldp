# Text-Tree publishing guide
This guide tries to provide help in publishing ColDP compliant data with the help of simple [text trees](https://github.com/gbif/text-tree).
TextTree is a very simple format, but can be extended in a flexible way:

> Abies alba Mill. [genus] {PUB=Miller2019 ENV=terrestrial,marine REF=Döring2021,Banki2022 VERN=de:Traubeneiche,fr:Chêne rouvre,dk:Vintereg,nl:Wintereik}

This guide provides conventions how to share additional information using TextTree.
For interoperability with [ChecklistBank](https://www.checklistbank.org) and other taxonomic systems we encourage to use some common information keys and value formats:

 - **PUB**: The key of a reference for the original publication of the name. The key should resolve to a reference given in an additional reference.[bib](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference-bibtex) or [json](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference-json-csl) file. See [ColDP](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference) for more information. 
 - **REF**: A list of reference keys to support the taxonomic opinion, concatenated by a comma. 
 - **ENV**: A list of [environments](/docs/README.md#environment) the species occurrs in, concatenated by a comma. 
 - **VERN**: A list of vernacular names, concatenated by a comma, each given as languageCode:name. Example: ```VERN=de:Traubeneiche,fr:Chêne rouvre,dk:Vintereg```

Any other keys for accepted names will be treated as generic taxon properties.

