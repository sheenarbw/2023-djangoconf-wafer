FROM python:3.10.6

# based on https://docs.docker.com/compose/django/https://docs.docker.com/compose/django/+
RUN pip install --upgrade pip
RUN pip install gunicorn

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code


# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash 
# RUN nvm install node

# COPY package.json /code/
# COPY package-lock.json /code/
# RUN npm install

COPY requirements.txt /code/
RUN pip install -r requirements.txt


EXPOSE 8000

COPY . /code/

CMD gunicorn -b :8000 --log-level debug djangoconf.wsgi

