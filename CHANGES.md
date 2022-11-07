# ColDP Release Notes

ColDP adheres to [semantic versioning](http://semver.org/):
 - **patch** changes (1.0.x) do not alter the exchange schema at all. No more fields or entities will be renamed, removed or added. The documentation and enumeration of values are allowed to change.
 - **minor** changes (1.x.0) preserve backwards compatability. Fields or entities can be added, but not renamed or removed.
 - **major** changes (x.0.0) break backwards compatability. Fields or entities can be renamed, removed, added or changed in semantics. 

## unreleased v1.1
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

## v1.0.1
[Released](https://github.com/CatalogueOfLife/coldp/releases/tag/v1.0.1) on 2022-04-07
 - Smaller documentation fixes, updates
 - Fix NameUsage diagram, add missing NameUsage.nameRemarks
 - Link to csltype vocabulary

## v1.0.0
[Released](https://github.com/CatalogueOfLife/coldp/releases/tag/v1.0.0) on 2021-10-25
Initial release