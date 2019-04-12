python-flask-tickets
========

# Setup
This is a simple ticket tracking flask application with a JSON API

# References
Linux Acadamy Training
Flask: http://flask.pocoo.org/docs/1.0/tutorial/database/
SQLAlchemy: http://flask-sqlalchemy.pocoo.org/2.3/
Flask Views: http://flask.pocoo.org/docs/1.0/tutorial/views/
Flask Templates: http://flask.pocoo.org/docs/1.0/tutorial/templates/
Werkzeug: https://palletsprojects.com/p/werkzeug/

# Setup Project
Setup your Python and PostgreSQL environment as a prereq.  You can refer to 'mypython' project to use containers.

## Create virtual environment
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
