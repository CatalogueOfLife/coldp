[![goodtables.io](https://goodtables.io/badge/github/CatalogueOfLife/datapackage-specs.svg)](https://goodtables.io/github/CatalogueOfLife/datapackage-specs)

# CoL Data Package Specification
The recommended exchange format for data to and from the CoL Clearinghouse
is a tabular text format with a fixed set of files and columns.

The format is a single ZIP archive that bundles various delimited text files described below together with a metadata.yaml file providing basic metadata about the entire dataset. Each file holds records for the same class of things shown in this diagram:

![schema](schema.png)


## Filenames
The filename for an entity in the above diagram is a case insensitive version of the class name, any number of ignored hyphens and a known tabular text suffix. The suffix specifies one of the two supported tabular flavours, comma separated or tab separated files:

 - `csv`: a comma separated, optionally quoted CSV file as per [RFC 4180](https://tools.ietf.org/html/rfc4180)
 - `tsv`, `tab` or `txt`: indicates a tab seperated file without quoting
 
 Valid examples are `taxon.tsv` or `vernacular-name.csv`

## Character Encoding
All data should be encoded in UTF-8.

## Frictionless datapackage.json
CoL provides a [webservice](http://api.col.plus/datapackage?title=specs&base=https%3A%2F%2Fraw.githubusercontent.com%2FCatalogueOfLife%2Fdatapackage-specs%2Fmaster%2Fdata%2F&resource=description.tsv&resource=distribution.tsv&resource=media.tsv&resource=name.tsv&resource=name-rel.tsv&resource=reference.tsv&resource=synonym.tsv&resource=taxon.tsv&resource=vernacular-name.tsv.tsv) returning a rich [tabular datapackage.json](https://frictionlessdata.io/docs/tabular-data-package/) describing the full customizable package. The webservice takes a few parameters to customize the package:

 - title: the human readble title for the dataset
 - resource: list of data filenames included in the package.
 - base: the optional base uri (URL or filesystem) of the directory the files are found under.
 - header: expect header columns in all data files, default=true.

## metadata.yaml
A YAML file with basic Dublin Core Key value pair entries.
TO BE DONE...maybe pass this as a param to the package service instead of title???

## Name

### ID
Unique name identifier that is referred to elsewhere via `nameID`.

### scientificName
Required scientific name excluding the authorship

### authorship
Authorship of the scientificName

### rank
type: [rank enum](http://api.col.plus/vocab/rank)

The rank of the name preferrably given in case insensitive english. The recommended vocabulary is included in [rank_enum](http://api.col.plus/vocab/rank).

### genus
The genus part of a bi/trinomial

### specificEpithet
The specific epithet in case of bi/trinomials.

### infraspecificEpithet
The infraspecific epithet in case of bi/trinomials.

### publishedInID
A referenceID pointing to the Reference table indicating the original publication of the name in its given combination

### publishedInPage
The exact page number within the referenced reference that the original publication of the name in its given combination starts.

### code
type: [code enum](http://api.col.plus/vocab/nomCode)

The nomenclatural code the name falls under.

### status
type: [code enum](http://api.col.plus/vocab/nomStatus)

The broad nomenclatural status of the name.
For the exact status note, e.g. *nomen nudum*, the remarks field should additionally be used

### link
A link to a webpage provided by the source depicting the name.

### remarks
Additional nomenclatural remarks about the name. Often indicating its status or relevant rules in the code.




## NameRel
A directed nomenclatural name relation.

### nameID 
The name this relation originates from.

### relatedNameID
The name this relation relates to.

### type
type: [enum](http://api.col.plus/vocab/nomreltype)

The kind of relation.

### publishedInID
The reference or nomenclatural act where this nomenclatural relation was established.

### remarks
Remarks about the relation.




## Taxon
An accepted name with a taxonomic classification given either as a parent-child relation or as a flat, denormalized record.

### ID
Unique taxon identifier that is referred to elsewhere via `taxonID`.

### parentID
The direct parent in the classification. This is the preferred way of exchanging a hierarchy and takes precedence over any classification given in the denormalized fields.

### nameID
Pointer to the accepted name referring to an existing Name.ID within this data package.

### referenceID
A comma concatenated list of reference IDs supporting the taxonomic concept.
Each ID must refer to an existing Reference.ID within this data package.

### provisional
type: [boolean](https://frictionlessdata.io/specs/table-schema/#boolean)

A flag indicating that the taxon is only provisionally accepted and should be handled with care.

### accordingTo
The latest scrutinizer who reviewed the taxonomic concept.

### accordingToID
An identifier for the latest scrutinizer who reviewed the taxonomic concept.
Recommended are [ORCID identifier](https://orcid.org/about/) which can be used inside DOI metadata of the CoL.

### accordingToDate 
type: [ISO8601 date](https://frictionlessdata.io/specs/table-schema/#date) 

The date when the taxonomic concept was last reviewed.

### fossil
type: [boolean](https://frictionlessdata.io/specs/table-schema/#boolean)

Flag indicating that the taxon existed pre holocene in the fossil record.

### recent 
type: [boolean](https://frictionlessdata.io/specs/table-schema/#boolean)

Flag indicating that the taxon existed during the holocene. This includes species that died out very recently. A taxon can both be recent and fossil.

### lifezone
type: [enum[]](http://api.col.plus/vocab/lifezone)
A comma delimited list of lifezones this taxon is known to exist in.

### link
A link to a webpage provided by the source depicting the taxon.

### remarks
Any further taxonomic remarks.

### subgenus
The subgenus the taxon is classified in.
If parentID is given this field is ignored.

### genus
The genus the taxon is classified in.
If parentID is given this field is ignored.

### subfamily
The subfamily the taxon is classified in.
If parentID is given this field is ignored.

### family
The family the taxon is classified in.
If parentID is given this field is ignored.

### superfamily
The superfamily the taxon is classified in.
If parentID is given this field is ignored.

### suborder
The suborder the taxon is classified in.
If parentID is given this field is ignored.

### order
The order the taxon is classified in.
If parentID is given this field is ignored.

### subclass
The subclass the taxon is classified in.
If parentID is given this field is ignored.

### class
The class the taxon is classified in.
If parentID is given this field is ignored.

### subphylum
The subphylum the taxon is classified in.
If parentID is given this field is ignored.

### phylum
The phylum the taxon is classified in.
If parentID is given this field is ignored.

### kingdom
The kingdom the taxon is classified in.
If parentID is given this field is ignored.



## Synonym
A synonymous name for a taxon.

### taxonID
Pointer to the taxon that this synonym is used for. For pro parte synonyms with multiple accepted names several synonym records sharing the same name but having different taxonIDs should be created. Refers to an existing Taxon.ID within this data package.

### nameID 
Pointer to the reference that is the source of this description. Refers to an existing Reference.ID within this data package.

### status 
type: [enum](http://api.col.plus/vocab/taxonomicstatus)

The kind of synonym. One of *synonym*, *ambiguous synonym* or *misapplied*.

### remarks
Taxonomic remarks



## Reference

### ID  
### citation
### author
### title
### year INTEGER
### source



## Description

### taxonID 
Pointer to the taxon referring to an existing Taxon.ID within this data package.

### category ENUM
### description 
### language CHARACTER3
### referenceID
Pointer to the reference that is the source of this description. Refers to an existing Reference.ID within this data package.



## Distribution
A structured distribution record for a taxon in a given area.

### taxonID 
Pointer to the taxon referring to an existing Taxon.ID within this data package.

### area 
The geographic area this distribution record is about.

### gazetteer
type: [enum](http://api.col.plus/vocab/gazetteer)

The geographic gazetteer the area is defined in.

### status 
type: [enum](http://api.col.plus/vocab/distributionstatus)
Distribution status.

### referenceID
Pointer to the reference that supports this distribution. Refers to an existing Reference.ID within this data package.



## Media
Multimedia items for a taxon such as an image, audio or video.

### taxonID 
Pointer to the taxon referring to an existing Taxon.ID within this data package.

### url 
The URL that resolves to the media item itself, not a webpage that depicts it.

### type
The MIME-type of the media item the url identifies.
Preferrably the full type/subtype combination, e.g `image/jpeg`, but the primary type alone is sufficient (`image`, `video`, `audio`).

### title
Optional title for the item.

### created
type: [ISO8601 date](https://frictionlessdata.io/specs/table-schema/#date) 
Date the media item was recorded.

### creator
Author of the media item.

### license
type: [license](http://api.col.plus/vocab/license) 

### link
Optional webpage from the source this media item is shown on.



## VernacularName
A vernacular or common name for a taxon.

### taxonID 
Pointer to the taxon referring to an existing Taxon.ID within this data package.

### name 
The vernacular name in the original script.

### transliteration
An optional transliteration of the verncular name into the latin script.

### language
Language of the vernacular name given as an ISO 3 letter code.

### country CHARACTER2
Country this vernacular name is used in given as an ISO 2 letter code.

### lifeStage
Optional life stage of the organism this vernacular name is restricted to.

### sex
type: [enum](http://api.col.plus/vocab/sex)

Optional sex of the organism this vernacular name is restricted to.

### referenceID
Pointer to the reference that supports this vernacular name. Refers to an existing Reference.ID within this data package.

