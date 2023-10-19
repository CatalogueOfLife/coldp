-- Postgres ColDP schema

-- enumeration types

CREATE TYPE CONTINENT AS ENUM (
  'AFRICA',
  'ANTARCTICA',
  'ASIA',
  'OCEANIA',
  'EUROPE',
  'NORTH_AMERICA',
  'SOUTH_AMERICA'
);

CREATE TYPE DISTRIBUTIONSTATUS AS ENUM (
  'NATIVE',
  'DOMESTICATED',
  'ALIEN',
  'UNCERTAIN'
);

CREATE TYPE ENVIRONMENT AS ENUM (
  'BRACKISH',
  'FRESHWATER',
  'MARINE',
  'TERRESTRIAL'
);

CREATE TYPE ESTIMATETYPE AS ENUM (
  'SPECIES_LIVING',
  'SPECIES_EXTINCT',
  'ESTIMATED_SPECIES'
);

CREATE TYPE GAZETTEER AS ENUM (
  'TDWG',
  'ISO',
  'FAO',
  'LONGHURST',
  'TEOW',
  'IHO',
  'MRGID',
  'TEXT'
);

CREATE TYPE GENDER AS ENUM (
  'MASCULINE',
  'FEMININE',
  'NEUTER'
);

CREATE TYPE MEDIATYPE AS ENUM (
  'IMAGE',
  'VIDEO',
  'AUDIO'
);

CREATE TYPE NAMEPART AS ENUM (
  'GENERIC',
  'INFRAGENERIC',
  'SPECIFIC',
  'INFRASPECIFIC'
);

CREATE TYPE NOMCODE AS ENUM (
  'BACTERIAL',
  'BOTANICAL',
  'CULTIVARS',
  'PHYTOSOCIOLOGICAL',
  'VIRUS',
  'ZOOLOGICAL'
);

CREATE TYPE NOMRELTYPE AS ENUM (
  'SPELLING_CORRECTION',
  'BASIONYM',
  'BASED_ON',
  'REPLACEMENT_NAME',
  'CONSERVED',
  'LATER_HOMONYM',
  'SUPERFLUOUS',
  'HOMOTYPIC',
  'TYPE'
);

CREATE TYPE NOMSTATUS AS ENUM (
  'ESTABLISHED',
  'NOT_ESTABLISHED',
  'ACCEPTABLE',
  'UNACCEPTABLE',
  'CONSERVED',
  'REJECTED',
  'DOUBTFUL',
  'MANUSCRIPT',
  'CHRESONYM'
);

CREATE TYPE RANK AS ENUM (
  'SUPERDOMAIN',
  'DOMAIN',
  'REALM',
  'SUBREALM',
  'SUPERKINGDOM',
  'KINGDOM',
  'SUBKINGDOM',
  'INFRAKINGDOM',
  'SUPERPHYLUM',
  'PHYLUM',
  'SUBPHYLUM',
  'INFRAPHYLUM',
  'PARVPHYLUM',
  'MICROPHYLUM',
  'NANOPHYLUM',
  'GIGACLASS',
  'MEGACLASS',
  'SUPERCLASS',
  'CLASS',
  'SUBCLASS',
  'INFRACLASS',
  'SUBTERCLASS',
  'PARVCLASS',
  'SUPERDIVISION',
  'DIVISION',
  'SUBDIVISION',
  'INFRADIVISION',
  'SUPERLEGION',
  'LEGION',
  'SUBLEGION',
  'INFRALEGION',
  'MEGACOHORT',
  'SUPERCOHORT',
  'COHORT',
  'SUBCOHORT',
  'INFRACOHORT',
  'GIGAORDER',
  'MAGNORDER',
  'GRANDORDER',
  'MIRORDER',
  'SUPERORDER',
  'ORDER',
  'NANORDER',
  'HYPOORDER',
  'MINORDER',
  'SUBORDER',
  'INFRAORDER',
  'PARVORDER',
  'FALANX',
  'MEGAFAMILY',
  'GRANDFAMILY',
  'SUPERFAMILY',
  'EPIFAMILY',
  'FAMILY',
  'SUBFAMILY',
  'INFRAFAMILY',
  'SUPERTRIBE',
  'TRIBE',
  'SUBTRIBE',
  'INFRATRIBE',
  'SUPRAGENERIC_NAME',
  'SUPERGENUS',
  'GENUS',
  'SUBGENUS',
  'INFRAGENUS',
  'SUPERSECTION',
  'SECTION',
  'SUBSECTION',
  'SUPERSERIES',
  'SERIES',
  'SUBSERIES',
  'INFRAGENERIC_NAME',
  'SPECIES_AGGREGATE',
  'SPECIES',
  'INFRASPECIFIC_NAME',
  'GREX',
  'KLEPTON',
  'SUBSPECIES',
  'CULTIVAR_GROUP',
  'CONVARIETY',
  'INFRASUBSPECIFIC_NAME',
  'PROLES',
  'NATIO',
  'ABERRATION',
  'MORPH',
  'SUPERVARIETY',
  'VARIETY',
  'SUBVARIETY',
  'SUPERFORM',
  'FORM',
  'SUBFORM',
  'PATHOVAR',
  'BIOVAR',
  'CHEMOVAR',
  'MORPHOVAR',
  'PHAGOVAR',
  'SEROVAR',
  'CHEMOFORM',
  'FORMA_SPECIALIS',
  'LUSUS',
  'CULTIVAR',
  'MUTATIO',
  'STRAIN',
  'OTHER',
  'UNRANKED'
);

CREATE TYPE SEX AS ENUM (
  'FEMALE',
  'MALE',
  'HERMAPHRODITE'
);

CREATE TYPE SPECIESINTERACTIONTYPE AS ENUM (
  'RELATED_TO',
  'CO_OCCURS_WITH',
  'INTERACTS_WITH',
  'ADJACENT_TO',
  'SYMBIONT_OF',
  'EATS',
  'EATEN_BY',
  'KILLS',
  'KILLED_BY',
  'PREYS_UPON',
  'PREYED_UPON_BY',
  'HOST_OF',
  'HAS_HOST',
  'PARASITE_OF',
  'HAS_PARASITE',
  'PATHOGEN_OF',
  'HAS_PATHOGEN',
  'VECTOR_OF',
  'HAS_VECTOR',
  'ENDOPARASITE_OF',
  'HAS_ENDOPARASITE',
  'ECTOPARASITE_OF',
  'HAS_ECTOPARASITE',
  'HYPERPARASITE_OF',
  'HAS_HYPERPARASITE',
  'KLEPTOPARASITE_OF',
  'HAS_KLEPTOPARASITE',
  'PARASITOID_OF',
  'HAS_PARASITOID',
  'HYPERPARASITOID_OF',
  'HAS_HYPERPARASITOID',
  'VISITS',
  'VISITED_BY',
  'VISITS_FLOWERS_OF',
  'FLOWERS_VISITED_BY',
  'POLLINATES',
  'POLLINATED_BY',
  'LAYS_EGGS_ON',
  'HAS_EGGS_LAYED_ON_BY',
  'EPIPHYTE_OF',
  'HAS_EPIPHYTE',
  'COMMENSALIST_OF',
  'MUTUALIST_OF'
);

CREATE TYPE TAXONCONCEPTRELTYPE AS ENUM (
  'EQUALS',
  'INCLUDES',
  'INCLUDED_IN',
  'OVERLAPS',
  'EXCLUDES'
);

CREATE TYPE TAXONOMICSTATUS AS ENUM (
  'ACCEPTED',
  'PROVISIONALLY_ACCEPTED',
  'SYNONYM',
  'AMBIGUOUS_SYNONYM',
  'MISAPPLIED',
  'BARE_NAME'
);

CREATE TYPE TREATMENTFORMAT AS ENUM (
  'PLAIN_TEXT',
  'MARKDOWN',
  'XML',
  'HTML',
  'TAX_PUB',
  'TAXON_X',
  'RDF'
);

CREATE TYPE TYPESTATUS AS ENUM (
  'EPITYPE',
  'ERGATOTYPE',
  'EX_TYPE',
  'HAPANTOTYPE',
  'HOLOTYPE',
  'ICONOTYPE',
  'LECTOTYPE',
  'NEOTYPE',
  'ORIGINAL_MATERIAL',
  'PARATYPE',
  'PATHOTYPE',
  'SYNTYPE',
  'TOPOTYPE',
  'ISOTYPE',
  'ISOEPITYPE',
  'ISOLECTOTYPE',
  'ISONEOTYPE',
  'ISOPARATYPE',
  'ISOSYNTYPE',
  'PARALECTOTYPE',
  'PARANEOTYPE',
  'ALLOLECTOTYPE',
  'ALLONEOTYPE',
  'ALLOTYPE',
  'PLASTOHOLOTYPE',
  'PLASTOISOTYPE',
  'PLASTOLECTOTYPE',
  'PLASTONEOTYPE',
  'PLASTOPARATYPE',
  'PLASTOSYNTYPE',
  'PLASTOTYPE',
  'PLESIOTYPE',
  'HOMOEOTYPE',
  'OTHER'
);



-- Postgres ColDP schema

CREATE TABLE reference (
  id TEXT PRIMARY KEY,
  alternative_id TEXT[],
  source_id TEXT,
  citation TEXT,
  type TEXT,
  author TEXT,
  editor TEXT,
  title TEXT,
  title_short TEXT,
  container_author TEXT,
  container_title TEXT,
  container_title_short TEXT,
  issued TEXT,
  accessed TEXT,
  collection_title TEXT,
  collection_editor TEXT,
  volume TEXT,
  issue TEXT,
  edition TEXT,
  page TEXT,
  publisher TEXT,
  publisher_place TEXT,
  version TEXT,
  isbn TEXT,
  issn TEXT,
  doi TEXT,
  link TEXT,
  remarks TEXT
);

CREATE TABLE name_usage (
  id TEXT PRIMARY KEY,
  alternative_id TEXT[],
  name_alternative_id TEXT[],
  source_id TEXT,
  parent_id TEXT REFERENCES name_usage,
  ordinal INTEGER,
  branch_length NUMERIC,
  basionym_id TEXT REFERENCES name_usage,
  status TEXT,
  scientific_name TEXT NOT NULL,
  authorship TEXT,
  rank RANK,
  uninomial TEXT,
  generic_name TEXT,
  infrageneric_epithet TEXT,
  specific_epithet TEXT,
  infraspecific_epithet TEXT,
  cultivar_epithet TEXT,
  notho NAMEPART,
  original_spelling BOOLEAN,
  combination_authorship TEXT,
  combination_ex_authorship TEXT,
  combination_authorship_year TEXT,
  basionym_authorship TEXT,
  basionym_ex_authorship TEXT,
  basionym_authorship_year TEXT,
  name_phrase TEXT,
  name_reference_id TEXT REFERENCES reference,
  name_published_id_year INTEGER,
  name_published_id_page TEXT,
  name_published_id_page_link TEXT,
  gender GENDER,
  gender_agreement BOOLEAN,
  code NOMCODE,
  name_status NOMSTATUS,
  according_to_id TEXT REFERENCES reference,
  scrutinizer TEXT,
  scrutinizer_id TEXT,
  scrutinizer_date TEXT,
  reference_id TEXT[],
  extinct BOOLEAN,
  temporal_range_start TEXT,
  temporal_range_end TEXT,
  environment ENVIRONMENT[],
  link TEXT,
  name_remarks TEXT,
  remarks TEXT
);

CREATE TABLE name_relation (
  name_id TEXT NOT NULL REFERENCES name_usage,
  related_name_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type NOMRELTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE type_material (
  id TEXT PRIMARY KEY,
  source_id TEXT,
  name_id TEXT NOT NULL REFERENCES name_usage,
  citation TEXT,
  status TYPESTATUS,
  institution_code TEXT,
  catalog_number TEXT,
  reference_id TEXT REFERENCES reference,
  locality TEXT,
  country CHARACTER(2),
  latitude DECIMAL,
  longitude DECIMAL,
  altitude INTEGER,
  host TEXT,
  sex SEX,
  "date" TEXT,
  collector TEXT,
  associated_sequences TEXT,
  link TEXT,
  remarks TEXT
);

CREATE TABLE distribution (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  area TEXT NOT NULL,
  area_id TEXT,
  gazetteer TEXT,
  status DISTRIBUTIONSTATUS,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE media (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  url TEXT NOT NULL,
  type MEDIATYPE,
  format TEXT,
  title TEXT,
  created TEXT,
  creator TEXT,
  license TEXT,
  link TEXT,
  remarks TEXT  
);

CREATE TABLE treatment (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  document TEXT NOT NULL,
  format TREATMENTFORMAT
);


CREATE TABLE vernacular_name (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  name TEXT NOT NULL,
  transliteration TEXT,
  language CHARACTER(3),
  preferred BOOLEAN,
  country CHARACTER(2),
  area TEXT,
  sex SEX,
  reference_id TEXT REFERENCES reference,
  remarks TEXT  
);

CREATE TABLE species_estimate (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  estimate INTEGER NOT NULL,
  type ESTIMATETYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE taxon_property (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  property TEXT NOT NULL,
  value TEXT NOT NULL,
  reference_id TEXT REFERENCES reference,
  page TEXT,
  ordinal INTEGER,
  remarks TEXT
);

CREATE TABLE species_interaction (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  related_taxon_id TEXT REFERENCES name_usage,
  source_id TEXT,
  related_taxon_scientific_name TEXT,
  type SPECIESINTERACTIONTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE taxon_concept_relation (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  related_taxon_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type TAXONCONCEPTRELTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);
