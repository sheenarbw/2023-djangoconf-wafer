# DjangoConf Africa 2023 CFPs

This is a Django application based on Wafer. We are using a very small piece of the functionality wafer provides. 

Please refer to this repo to see how to use Wafer to full effect: https://github.com/CTPUG/pyconza2023 

## To run this


1. Get the development database up:

```
cd database/localhost
docker-compose up
```

2. Run the main application

There is some trickiness around collectstatic. You may need to fiddle with settings.py to make it work. 

```
Run pip install -r requirements.txt.
Run npm install.
Run ./manage.py collectstatic.
Run ./manage.py migrate.
Run ./manage.py createcachetable wafer_cache_table.
Run ./manage.py runserver.
```

3. Create an index page

When you run the app for the first time and go to `http://127.0.0.1:8000/` you'll see a message that says "Index page missing". To fix this:

- Create a superuser and login
- create a "page" named index with some content

