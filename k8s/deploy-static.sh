#!/bin/sh 

cd ../
python manage.py collectstatic --noinput
npm install


# gcloud storage buckets add-iam-policy-binding gs://djangoconf-wafer-collectstatic --member=allUsers --role=roles/storage.objectViewer

gsutil -m rsync -r ../static gs://djangoconf-wafer-collectstatic/static
