# Basic CRUD with Django - Deploy with Docker!

To see how this what created, see [this Gist](https://gist.github.com/nu12/e827637e53c6b56fe0303c28341de221).

## Development

Install dependencies:
```shell
$ sudo apt-get install -y python3-pip python3-virtualenv
```

Create & activate virtual env:
```shell
$ python3 -m virtualenv myenv -p python3 --always-copy
$ source myenv/bin/activate
```

Add Django:
```shell
(myenv) $ python -m pip install django
```

Run migrations:
```shell
(myenv) $ python manage.py makemigrations
(myenv) $ python manage.py migrate
```

Run the app:
```shell
(myenv) $ python manage.py runserver
```

## Deployment (Docker)

Build the image:
```shell
$ docker build -t my-django-app .
```

Run a container:
```shell
$ docker run -d -p 8000:8000 my-django-app
```

Access the container on port 8000.