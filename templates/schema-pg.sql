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
  rank TEXT,
  uninomial TEXT,
  generic_name TEXT,
  infrageneric_epithet TEXT,
  specific_epithet TEXT,
  infraspecific_epithet TEXT,
  cultivar_epithet TEXT,
  notho TEXT,
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
  gender TEXT,
  gender_agreement BOOLEAN,
  code TEXT,
  name_status TEXT,
  according_to_id TEXT REFERENCES reference,
  scrutinizer TEXT,
  scrutinizer_id TEXT,
  scrutinizer_date TEXT,
  reference_id TEXT[],
  extinct BOOLEAN,
  temporal_range_start TEXT,
  temporal_range_end TEXT,
  environment TEXT[],
  link TEXT,
  name_remarks TEXT,
  remarks TEXT
);

CREATE TABLE name_relation (
  name_id TEXT NOT NULL REFERENCES name_usage,
  related_name_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type TEXT NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE type_material (
  id TEXT PRIMARY KEY,
  source_id TEXT,
  name_id TEXT NOT NULL REFERENCES name_usage,
  citation TEXT,
  status TEXT,
  institution_code TEXT,
  catalog_number TEXT,
  reference_id TEXT REFERENCES reference,
  locality TEXT,
  country CHARACTER(2),
  latitude DECIMAL,
  longitude DECIMAL,
  altitude INTEGER,
  host TEXT,
  sex TEXT,
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
  status TEXT,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE media (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  url TEXT NOT NULL,
  type TEXT,
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
  format TEXT
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
  sex TEXT,
  reference_id TEXT REFERENCES reference,
  remarks TEXT  
);

CREATE TABLE species_estimate (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  estimate INTEGER NOT NULL,
  type TEXT NOT NULL,
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
  type TEXT NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE taxon_concept_relation (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  related_taxon_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type TEXT NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);
