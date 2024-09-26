# ColDP Release Notes

ColDP adheres to [semantic versioning](http://semver.org/):
 - **patch** changes (1.0.x) do not alter the exchange schema at all. No more fields or entities will be renamed, removed or added. The documentation and enumeration of values are allowed to change.
 - **minor** changes (1.x.0) preserve backwards compatability. Fields or entities can be added, but not renamed or removed.
 - **major** changes (x.0.0) break backwards compatability. Fields or entities can be renamed, removed, added or changed in semantics. 


## unreleased v1.2
Milestone 1.2](https://github.com/CatalogueOfLife/coldp/issues?q=is%3Aissue+milestone%3A%22Version+1.2%22+)


## v1.1.0
[Released](https://github.com/CatalogueOfLife/coldp/releases/tag/v1.1.0) on 2024-09-26, [Milestone 1.1](https://github.com/CatalogueOfLife/coldp/issues?q=is%3Aissue+milestone%3A%22Version+1.1%22+)
 - Add conversion.description & url to metadata: https://github.com/CatalogueOfLife/coldp/issues/82
 - Taxon.accordingToPage & Taxon.accordingToPage: https://github.com/CatalogueOfLife/coldp/issues/60
 - add modified, modifiedBy to all entities: https://github.com/CatalogueOfLife/coldp/issues/73
 - nomenclatural relation & TypeMaterial.page
 - Add urlFormatter to metadata
 - Name.etymology
 - Name.originalSpelling
 - Name.gender & genderAgreement: https://github.com/CatalogueOfLife/coldp/issues/69
 - VernacularName.preferred: https://github.com/CatalogueOfLife/coldp/issues/70
 - Add Author entity: https://github.com/CatalogueOfLife/coldp/issues/77
     + [Name.combinationAuthorshipID](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#combinationAuthorshipID)
     + [Name.combinationExAuthorshipID](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#combinationExAuthorshipID)
     + [Name.basionymAuthorshipID](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#basionymAuthorshipID)
     + [Name.basionymExAuthorshipID](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#basionymExAuthorshipID)
     + Reference.authorID
     + Reference.editorID
     + Reference.containerAuthorID
     + Reference.collectionEditorID
 - Structured authorships: https://github.com/CatalogueOfLife/coldp/issues/75
     + [combinationAuthorship](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#combinationAuthorship)
     + [combinationExAuthorship](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#combinationExAuthorship)
     + [combinationAuthorshipYear](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#combinationAuthorshipYear)
     + [basionymAuthorship](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#basionymAuthorship)
     + [basionymExAuthorship](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#basionymExAuthorship)
     + [basionymAuthorshipYear](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#basionymAuthorshipYear)
 - titleShort and containerTitleShort added to Reference: https://github.com/CatalogueOfLife/coldp/issues/74
 - Add default.yaml: https://github.com/CatalogueOfLife/coldp/issues/44
 - Add TaxonProperty entity: https://github.com/CatalogueOfLife/coldp/issues/76
 - Add metadata keywords: https://github.com/CatalogueOfLife/coldp/issues/67
 - Best practises for misapplied names
 - Change enum links to point to checklistbank.org not catalogue.life
 - Add alternativeID for version 1.1: https://github.com/CatalogueOfLife/coldp/issues/61
 - Mark additions in readme as v1.1
 - Update temporal range docs to accept Ma values
 - Add missing type material fields for EJT guidelines: https://github.com/CatalogueOfLife/coldp/issues/64
 - Explain CSV & TSV format in more detail
 - Recommend to include changelog file
 - Include logo.png in readme
 - remove Distribution.pageReferenceID and VernacularName.pageReferenceID from readme, which were never present in the schema
 - link to identifiers.org

## v1.0.1
[Released](https://github.com/CatalogueOfLife/coldp/releases/tag/v1.0.1) on 2022-04-07
 - Smaller documentation fixes, updates
 - Fix NameUsage diagram, add missing NameUsage.nameRemarks
 - Link to csltype vocabulary

## v1.0.0
[Released](https://github.com/CatalogueOfLife/coldp/releases/tag/v1.0.0) on 2021-10-25
Initial release