python-flask-tickets
========

# Setup
This is a simple ticket tracking flask application with a JSON API

# Setup Project
Setup your Python and PostgreSQL environment as a prereq.  You can refer to 'mypython' project to use containers.

## Create Python 3.7 virtual environment
```
cd python-flask-tickets
pipenv --python python3.7 install flask python-dotenv psycopg2-binary Flask-SQLAlchemy Flask-Migrate
pipenv shell
mkdir templates static
touch {templates,static}/.gitkeep
vi config.py
vi models.py
vi __init__.py
```

## Create PostgreSQL

### Create DB
Using docker start your PostgreSQL instance.
```
source setEnv.sh
```
By sourcing setEnv.sh you enable the "runpostgres" alias to start your notesdb instance quickly.

```
runpostgres() {
  docker run -d --name postgres \
    --name dashboarddb \
    -e POSTGRES_USER=$POSTGRES_USER \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -e POSTGRES_DB=dashboard \
    -p 80:5432 \
    -p 5432:5432 \
    --restart always \
    postgres:9.6.8-alpine "$@"
}
```
### Populate the notes DB.
Using the roles and sql dump files in the ./sample_db directory lets restore a working database.

```
psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${HOST}:5432/dashboard < dashboard_roles.sql

psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${HOST}:5432/dashboard < dashboard_dump.sql
```


## Run Flask as you develope
Its best to bring up a new terminal and run the application in the forground.  Flask will automatically reload after changes and you can watch this terminal for immediate feedback.

Additionally, open your web browser to http://localhost:3000

```
$ export FLASK_ENV=development
$ export FLASK_APP='.'
$ flask run --host=0.0.0.0 --port=3000
```

#  Application URI's
http://localhost:3000/tickets
http://localhost:3000/tickets/1
http://localhost:3000/api/tickets
http://localhost:3000/api/tickets/1

# References
* Linux Acadamy Training
* Flask: http://flask.pocoo.org/docs/1.0/tutorial/database/
* SQLAlchemy: http://flask-sqlalchemy.pocoo.org/2.3/
* Flask Views: http://flask.pocoo.org/docs/1.0/tutorial/views/
* Flask Templates: http://flask.pocoo.org/docs/1.0/tutorial/templates/
* Werkzeug: https://palletsprojects.com/p/werkzeug/
