# Restoring the PostgreSQL Database

`orm_restore.sql` is a PostgreSQL custom-format dump, so restore it with `pg_restore` instead of `psql`.

## Recommended command

```bash
pg_restore -U nr -h localhost -d stored --no-owner orm_restore.sql
```

`--no-owner` is needed because the dump tries to assign ownership to the `postgres` role, but this machine uses the `nr` role.

## Clean restore if the database was already partially restored

```bash
pg_restore -U nr -h localhost -d stored --clean --if-exists --no-owner orm_restore.sql
```

## If there are duplicate/existing-data errors

Drop and recreate the database, then restore again:

```bash
dropdb -U nr -h localhost stored
createdb -U nr -h localhost stored
pg_restore -U nr -h localhost -d stored --no-owner orm_restore.sql
```
