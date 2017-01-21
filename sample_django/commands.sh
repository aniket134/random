# setup django
echo "                  !!!! Careful !!!"
echo "Execute these commands to setup a simple django project.

  sudo -u postgres psql
    CREATE DATABASE dbname;
    CREATE USER username;
    ALTER ROLE username SET client_encoding TO 'utf8';
    ALTER ROLE username SET default_transaction_isolation TO 'read committed';
    ALTER ROLE username SET timezone TO 'UTC';
    GRANT ALL PRIVILEGES ON DATABASE dbname to username;

  mkdir -p ~/code/myproj/static
  cd ~/code/myproj/
  virtualenv env
  source env/bin/activate
  pip install django psycopg2
  django-admin.py startproject myproject .
  emacs ~/code/myproj/myproject/settings.py 
    STATIC_ROOT = os.path.join(BASE_DIR, "static/")
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': 'website',
            'USER': 'websiteuser',
            'PASSWORD': 'wbsitepasswdw',
            'HOST': 'localhost',
            'PORT': '',
        }
    }
  ./manage.py makemigrations
  ./manage.py migrate
  ./manage.py createsuperuser
  ./manage.py collectstatic
  ./manage.py runserver 0.0.0.0:8000
  deactivate

  chmod 664 ~/code/myproj/db.sqlite3
  sudo chown :www-data ~/code/myproj/db.sqlite3
  sudo chown :www-data ~/code/myproj
  sudo cp ~/code/random/sample_django/sample_apache.conf /etc/apache2/sites-available/000-default.conf
  sudo service apache2 restart

"
