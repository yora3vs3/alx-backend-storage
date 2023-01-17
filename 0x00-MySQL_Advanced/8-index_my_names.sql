-- Script that creates an index idx_name_first on
-- the table names and the first letter of name.
CREATE INDEX IDX_NAME_FIRST ON NAMES(
    NAME(1)
)
