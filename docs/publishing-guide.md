# ColDP Publishing Guidelines
This guide tries to provide help in publishing ColDP data by giving concrete examples for various cases.
It should be seen as the intended way of using ColDP when there seemingly are several ways of expressing the same thing.


* [Minimal information](#minimal-information)
* [Names](#names)
* [Name relations](#name-relations)
* [Taxon concepts](#taxon-concepts)
* [References](#references)


## Minimal information
ColDP covers a range of entities and for names, references and usages also provides alternative representations, mostly parsed and unparsed, one can chose from. The information to be shared with ChecklistBank can be prioritized like the following, using only the simpler [NameUsage](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#nameusage) entity instead of Name, Taxon & Synonym.

#### Minimal information
 - [NameUsage](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#nameusage)
   - ID
   - scientificName
   - authorship
   - rank
   - status
   - parentID OR kingdom|phylum|class|order|family|genus


#### Highly recommended information
 - [NameUsage](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#nameusage)
   - basionymID
   - publishedInID
   - extinct
   - environment
   - link
 - [Reference](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#reference)
   - ID
   - citation
   - DOI
   - link


#### Desired information
 - [NameUsage](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#nameusage)
   - code
   - publishedInPageLink
   - gender
   - genderAgreement
 - [NameRelation](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#namerelation)
   - nameID
   - relatedNameID
   - type
 - [TypeMaterial](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#typematerial)
   - nameID
   - citation
   - status
   - link
 - [VernacularName](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#vernacularname)
   - taxonID
   - name
   - language
 - [Media](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#media)
   - taxonID
   - url
   - type
   - license
       
#### Optional information
Anything else not mentioned above including [Distributions](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#media), [Treatments](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#treatment), [Author](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#author), [SpeciesInteraction](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#speciesinteraction) and [TaxonProperty](https://github.com/CatalogueOfLife/coldp/blob/master/README.md#taxonproperty) which can be used to share any other information about a taxon.



## Names
Scientific names can be provided either as a simple pair of ```rank```, ```scientificName``` and ```authorship```
or as a more structured, parsed version supplying individual name parts in dedicated fields that often depend on the rank of the name.
The simple version is always an option, but requires a consumer like ChecklistBank to parse the name into atoms.
This works in 99.99% of names, but can lead to unexpected results in rare, special cases.
The following example therefore focus on how to provide names as proper parsed names already, so there is no need to further interpret them.

In addition to parsed names, the authorship can also be broken down into individual parts, i.e. authors 
including even identifiers for individual authors. See the [parsed authorship examples](#parsedAuthorships) below for more details.

### Binomials
A regular species name like should be given as:

```Abies alba Mill.``` 
```
rank: species
genus: Abies
specificEpithet: alba
authorship: Mill.
```

### Infraspecific names
Infraspecific names like ```Abies alba subsp. apennina Brullo, Scelsi & Spamp.``` should be given as

```
rank: subspecies
genus: Abies
specificEpithet: alba
infraspecificEpithet: apennina
authorship: Brullo, Scelsi & Spamp.
```

There should be no rank marker given as part of the infraspecificEpithet, just the name part on its own.
Note that botanical and zoological names prefer a different rendering of subspecies, but the atomised names look just the same.
Consider the zoological subspecies ```Delphinus delphis ponticus Barabash, 1935```:
```
rank: subspecies
genus: Delphinus
specificEpithet: delphis
infraspecificEpithet: ponticus
authorship: Barabash, 1935
```

For consumers like ChecklistBank to render the name correctly it is recommended to supply also a [nomenclatoral code value](http://api.checklistbank.org/vocab/nomcode):
```
code: zoological
```
In many cases the code is the same for all names of an entire dataset. 
In Checklistbank this can be configured as [dataset options](https://www.checklistbank.org/dataset/2371/options) as a dataset wide default value.


Different ranks like the form ```Abies alba f. compacta (Parsons) Rehder``` also follow the same scheme:
```
rank: forma
genus: Abies
specificEpithet: alba
infraspecificEpithet: compacta
authorship: (Parsons) Rehder
```

Some publications include infraspecific names with more than 3 name parts and various authorships, e.g. a variety that also includes the subspecies:
```Draba bruniifolia Steven subsp. heterocoma (Fenzl) Coode & Cullen var. nana (Stapf) O.E. Schulz ex Coode & Cullen```

These are not properly formed names according to the codes and only the terminal infraspecific epithet and authorship should in those cases be given:
```
rank: variety
genus: Draba
specificEpithet: bruniifolia
infraspecificEpithet: nana
authorship: (Stapf) O.E. Schulz ex Coode & Cullen
```


### Infrageneric names
Infrageneric names like a subgenus on the other hand are frequently classified into a genus and should *not* be using the uninomial field.
Instead there is a dedicated ```infragenericEpithet``` that optionally can be accompanied by the genus field. 
```Lasiurus (Aeorestes) (Geoffroy St.-Hilaire, 1806)```:
```
rank: subgenus
genus: Lasiurus
infragenericEpithet: Aeorestes
authorship: (Geoffroy St.-Hilaire, 1806)
code: zoological
```
Again infrageneric names are rendered differently between codes, so having an explicit code value given is recommended.


The species name for the bat ```Lasiurus (Aeorestes) villosissimus (Geoffroy St.-Hilaire, 1806)``` can also given given with an infrageneric name:
```
rank: species
genus: Lasiurus
infragenericEpithet: Aeorestes
specificEpithet: villosissimus
authorship: (Geoffroy St.-Hilaire, 1806)
code: zoological
```

Similar botanical sections such as ```Lilium sect. Martagon Rchb.``` are given as:
```
rank: section
genus: Lilium
infragenericEpithet: Martagon
authorship: Rchb.
code: botanical
```

### Genera
Parsed genus names should be supplied using the ```uninomial``` field just as suprageneric names.
The ```genus``` field is reserved only for classifying a species or infrageneric name, but not for standalone genera like ```Puma Jardine, 1834```:
```
rank: genus
uninomial: Puma
authorship: Jardine, 1834
```

### Families and other suprageneric names
Families and higher ranked names are given as uninomials just like a genus. E.g. the family ```Asteraceae Bercht. & J.Presl```
```
rank: family
uninomial: Asteraceae
authorship: Bercht. & J.Presl
```

### Cultivars
Similar to infraspecific names cultivars according to the [International Code of Nomenclature for Cultivated Plants](https://www.ishs.org/sites/default/files/static/ScriptaHorticulturae_18.pdf)
 have their own field to capture the cultivar name:
```Chamaecyparis lawsoniana 'Golden Wonder'```

```
rank: cultivar
genus: Chamaecyparis
specificEpithet: lawsoniana
cultivarEpithet: Golden Wonder
code: cultivars
```

Cultivar Groups are treated the same way just with a different rank. 
The rank marker "Group" is not mentioned again in the epithet field:
```Brassica oleracea Capitata Group```

```
rank: cultivar group
genus: Brassica
specificEpithet: oleracea
cultivarEpithet: Capitata
code: cultivars
```


### Hybrids
There are two kind of hybrids that are syntactically very different.
**Hybrid formulas** are combinations of several names and currently cannot be represented in a parsed way in ColDP.
Names such as ```Festuca pratensis × Lolium perenne``` should be given as simple names only:
```
scientificName: Festuca pratensis × Lolium perenne
```

**Named hybrids** or notho taxa on the other hand are very much structured like regular Linnean names and can be represented as parsed ColDP names.
For example the hybrid ```Lolium multiflorum × Schedonorus arundina``` 
has been described as the nothospecies ```×Schedolium krasanii H. Scholz```. 
The hybrid marker should be preserved as a prefix in the respective epithet field using the true multiplication sign:
```
rank: species
genus: ×Schedolium
specificEpithet: krasanii
code: botanical
```


### OTUs

### Informal names

### Placeholders


## Parsed authorships
Instead of a single authorship string there are several individual properties that can be used to break down the string:

 - combinationAuthorship
 - combinationAuthorshipID
 - combinationExAuthorship
 - combinationExAuthorshipID
 - combinationAuthorshipYear
 - basionymAuthorship
 - basionymAuthorshipID
 - basionymExAuthorship
 - basionymExAuthorshipID
 - basionymAuthorshipYear

Apart from the year all other fields can be a `|` concatenated list of values.
For example ```Abies alba subsp. apennina Brullo, Scelsi & Spamp.``` could be given as

```
rank: subspecies
genus: Abies
specificEpithet: alba
infraspecificEpithet: apennina
combinationAuthorship: Brullo|Scelsi|Spamp.
combinationAuthorshipID: 13165-1|36267-1|27048-1
```

with these entries in the Author table:
```
ID: 13165-1
given: Brullo
family: Brullo
abbreviationBotany: Brullo
sex: male
birth: 1947
country: Italy
link: https://www.ipni.org/a/13165-1

ID: 36267-1
given: Fabrizio
family: Scelsi
abbreviationBotany: Scelsi
sex: male
country: Italy
link: https://www.ipni.org/a/36267-1

ID: 27048-1
given: Giovanni
family: Spampinato
abbreviationBotany: Spamp.
sex: male
birth: 1958
link: https://www.ipni.org/a/27048-1
```


## Name relations
tbd ...


### Basionyms or original names




## Taxon concepts
tbd ...

### accordingTo




## References
tbd ...

