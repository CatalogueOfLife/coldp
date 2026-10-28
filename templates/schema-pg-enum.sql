-- Postgres ColDP schema

-- enumeration types

CREATE TYPE CSLTYPE AS ENUM (
  'ARTICLE',
  'ARTICLE_MAGAZINE',
  'ARTICLE_NEWSPAPER',
  'ARTICLE_JOURNAL',
  'BILL',
  'BOOK',
  'BROADCAST',
  'CHAPTER',
  'DATASET',
  'DOCUMENT',
  'ENTRY',
  'ENTRY_DICTIONARY',
  'ENTRY_ENCYCLOPEDIA',
  'FIGURE',
  'GRAPHIC',
  'INTERVIEW',
  'LEGISLATION',
  'LEGAL_CASE',
  'MANUSCRIPT',
  'MAP',
  'MOTION_PICTURE',
  'MUSICAL_SCORE',
  'PAMPHLET',
  'PAPER_CONFERENCE',
  'PATENT',
  'PERFORMANCE',
  'PERIODICAL',
  'POST',
  'POST_WEBLOG',
  'PERSONAL_COMMUNICATION',
  'REPORT',
  'REVIEW',
  'REVIEW_BOOK',
  'SOFTWARE',
  'SONG',
  'SPEECH',
  'STANDARD',
  'THESIS',
  'TREATY',
  'WEBPAGE'
);

CREATE TYPE DEGREEOFESTABLISHMENT AS ENUM (
  'NATIVE',
  'CAPTIVE',
  'CULTIVATED',
  'RELEASED',
  'FAILING',
  'CASUAL',
  'REPRODUCING',
  'ESTABLISHED',
  'COLONISING',
  'INVASIVE',
  'WIDESPREAD_INVASIVE'
);

CREATE TYPE ENVIRONMENT AS ENUM (
  'BRACKISH',
  'FRESHWATER',
  'MARINE',
  'TERRESTRIAL'
);

CREATE TYPE ESTABLISHMENTMEANS AS ENUM (
  'NATIVE',
  'NATIVE_ENDEMIC',
  'NATIVE_REINTRODUCED',
  'INTRODUCED',
  'INTRODUCED_ASSISTED_COLONISATION',
  'VAGRANT',
  'UNCERTAIN'
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
  'REALM',
  'IHO',
  'MRGID',
  'TEOW',
  'WDPA',
  'GI',
  'TEXT'
);

CREATE TYPE GENDER AS ENUM (
  'MASCULINE',
  'FEMININE',
  'NEUTER'
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
  'PHYTO',
  'VIRUS',
  'ZOOLOGICAL',
  'PHYLO'
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
  'CHRESONYM',
  'ORTHOGRAPHIC_VARIANT'
);

CREATE TYPE RANK AS ENUM (
  'SUPERDOMAIN',
  'DOMAIN',
  'SUBDOMAIN',
  'INFRADOMAIN',
  'EMPIRE',
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
  'CLAUDIUS',
  'GIGACLASS',
  'MEGACLASS',
  'SUPERCLASS',
  'CLASS',
  'SUBCLASS',
  'INFRACLASS',
  'SUBTERCLASS',
  'PARVCLASS',
  'SUPERDIVISION',
  'DIVISION_ZOOLOGY',
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
  'SUPERSECTION_ZOOLOGY',
  'SECTION_ZOOLOGY',
  'SUBSECTION_ZOOLOGY',
  'SUPERSERIES_ZOOLOGY',
  'SERIES_ZOOLOGY',
  'SUBSERIES_ZOOLOGY',
  'FALANX',
  'GIGAFAMILY',
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
  'DIVISION_BOTANY',
  'SUPERSECTION_BOTANY',
  'SECTION_BOTANY',
  'SUBSECTION_BOTANY',
  'SUPERSERIES_BOTANY',
  'SERIES_BOTANY',
  'SUBSERIES_BOTANY',
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

CREATE TYPE SEASON AS ENUM (
  'SPRING',
  'SUMMER',
  'AUTUMN',
  'WINTER',
  'WET',
  'DRY'
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

CREATE TYPE THREATSTATUS AS ENUM (
  'EXTINCT',
  'EXTINCT_IN_THE_WILD',
  'CRITICALLY_ENDANGERED',
  'ENDANGERED',
  'VULNERABLE',
  'NEAR_THREATENED',
  'LEAST_CONCERN',
  'DATA_DEFICIENT',
  'NOT_EVALUATED'
);

CREATE TYPE TREATMENTFORMAT AS ENUM (
  'PLAIN_TEXT',
  'MARKDOWN',
  'XML',
  'HTML',
  'TAX_PUB',
  'TAXON_X',
  'RDF',
  'PDF'
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
  type CSLTYPE,
  author TEXT,
  author_id TEXT[],
  editor TEXT,
  editor_id TEXT[],
  title TEXT,
  title_short TEXT,
  container_author TEXT,
  container_author_id TEXT[],
  container_title TEXT,
  container_title_short TEXT,
  issued TEXT,
  accessed TEXT,
  collection_title TEXT,
  collection_editor TEXT,
  collection_editor_id TEXT[],
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
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE author (
  id TEXT PRIMARY KEY,
  source_id TEXT,
  alternative_id TEXT[],
  given TEXT,
  family TEXT,
  suffix TEXT,
  abbreviation_botany TEXT,
  alternative_names TEXT,
  sex SEX,
  country TEXT,
  birth TEXT,
  birth_place TEXT,
  death TEXT,
  affiliation TEXT,
  interest TEXT,
  reference_id TEXT[],
  link TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE name_usage (
  id TEXT PRIMARY KEY,
  alternative_id TEXT[],
  name_alternative_id TEXT[],
  source_id TEXT,
  parent_id TEXT REFERENCES name_usage,
  basionym_id TEXT REFERENCES name_usage,
  status TAXONOMICSTATUS,
  scientific_name TEXT NOT NULL,
  authorship TEXT,
  rank RANK,
  notho NAMEPART,
  original_spelling BOOLEAN,
  uninomial TEXT,
  generic_name TEXT,
  infrageneric_epithet TEXT,
  specific_epithet TEXT,
  infraspecific_epithet TEXT,
  cultivar_epithet TEXT,
  combination_authorship TEXT,
  combination_authorship_id TEXT,
  combination_ex_authorship TEXT,
  combination_ex_authorship_id TEXT,
  combination_authorship_year TEXT,
  basionym_authorship TEXT,
  basionym_authorship_id TEXT,
  basionym_ex_authorship TEXT,
  basionym_ex_authorship_id TEXT,
  basionym_authorship_year TEXT,
  name_phrase TEXT,
  name_reference_id TEXT REFERENCES reference,
  name_published_in_year INTEGER,
  name_published_in_page TEXT,
  name_published_in_page_link TEXT,
  gender GENDER,
  gender_agreement BOOLEAN,
  etymology TEXT,
  code NOMCODE,
  name_status NOMSTATUS,
  according_to_id TEXT REFERENCES reference,
  according_to_page TEXT,
  according_to_page_link TEXT,
  reference_id TEXT[],
  scrutinizer TEXT,
  scrutinizer_id TEXT,
  scrutinizer_date TEXT,
  extinct BOOLEAN,
  temporal_range_start TEXT,
  temporal_range_end TEXT,
  environment ENVIRONMENT[],
  species TEXT,
  section TEXT,
  subgenus TEXT,
  genus TEXT,
  subtribe TEXT,
  tribe TEXT,
  subfamily TEXT,
  family TEXT,
  superfamily TEXT,
  suborder TEXT,
  "order" TEXT,
  subclass TEXT,
  class TEXT,
  subphylum TEXT,
  phylum TEXT,
  kingdom TEXT,
  ordinal INTEGER,
  branch_length NUMERIC,
  link TEXT,
  name_remarks TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE name_relation (
  name_id TEXT NOT NULL REFERENCES name_usage,
  related_name_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type NOMRELTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  page TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE type_material (
  id TEXT PRIMARY KEY,
  name_id TEXT[] NOT NULL,
  source_id TEXT,
  citation TEXT,
  status TYPESTATUS[],
  reference_id TEXT REFERENCES reference,
  page TEXT,
  country TEXT,
  locality TEXT,
  latitude DECIMAL,
  longitude DECIMAL,
  altitude INTEGER,
  sex SEX,
  host TEXT,
  associated_sequences TEXT,
  "date" TEXT,
  collector TEXT,
  institution_code TEXT,
  catalog_number TEXT,
  link TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE distribution (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  area_id TEXT,
  area TEXT NOT NULL,
  gazetteer GAZETTEER,
  establishment_means ESTABLISHMENTMEANS,
  degree_of_establishment DEGREEOFESTABLISHMENT,
  pathway TEXT,
  threat_status THREATSTATUS,
  year INTEGER,
  season SEASON,
  life_stage TEXT,
  reference_id TEXT REFERENCES reference,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE media (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  url TEXT NOT NULL,
  type TEXT,
  title TEXT,
  created TEXT,
  creator TEXT,
  license TEXT,
  link TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
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
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE species_estimate (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  estimate INTEGER NOT NULL,
  type ESTIMATETYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE taxon_property (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  property TEXT NOT NULL,
  value TEXT NOT NULL,
  ordinal INTEGER,
  reference_id TEXT REFERENCES reference,
  page TEXT,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE species_interaction (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  related_taxon_id TEXT REFERENCES name_usage,
  source_id TEXT,
  related_taxon_scientific_name TEXT,
  type SPECIESINTERACTIONTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);

CREATE TABLE taxon_concept_relation (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  related_taxon_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type TAXONCONCEPTRELTYPE NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT,
  modified TIMESTAMPTZ,
  modified_by TEXT
);
