# How to use

## Prerequisite

### Install Docker

### Create `jupyter.env`

Create a file `jupyter.env` in the top directory of the project,
and define your password to login to notebook server in the file.
Each line of the env file is expected to be in `VAR=VAL` format.
Necessary variable in the env file is `NOTEBOOK_PASSWORD`.

``` ini
NOTEBOOK_PASSWORD=your_notebook_password
```


### Create `db.env`

Create a file `db.env` in the top directory of the project,
and define variables: `POSTGRES_PASSWORD` for your password to login the database,
and `POSTGRES_USER` for your user name used in the database.
The format is the same as `jupyter.env`.

``` ini
POSTGRES_PASSWORD=your_db_password
POSTGRES_USER=your_db_user_name
```

