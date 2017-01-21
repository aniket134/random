# setup django
echo "                  !!!! Careful !!!"
echo "Execute these commands to setup a simple django project.
  mkdir -p ~/code/myproj/static
  cd ~/code/myproj/
  virtualenv env
  source env/bin/activate
  pip install django
  django-admin.py startproject myproject .
  echo 'STATIC_ROOT = os.path.join(BASE_DIR, "static/")' >> myproject/settings.py 
  ./manage.py makemigrations
  ./manage.py migrate
  ./manage.py createsuperuser
  ./manage.py collectstatic
  ./manage.py runserver 0.0.0.0:8000
  deactivate

  chmod 664 ~/code/myproj/db.sqlite3
  sudo chown :www-data ~/code/myproj/db.sqlite3
  sudo chown :www-data ~/code/myproj
  sudo cp sample_apache.conf /etc/apache2/sites-available/000-default.conf
  sudo service apache2 restart"
