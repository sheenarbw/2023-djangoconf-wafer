#!/bin/sh
 

# Cloud SQL secrets
kubectl create secret generic cloudsql-oauth-credentials-djangoconf2023-wafer --from-file=credentials.json=$GOOGLE_APPLICATION_CREDENTIALS

kubectl create secret generic cloudsql-djangoconf2023-wafer --from-literal=SQL_USER=$SQL_USER --from-literal=SQL_PASS=$SQL_PASS

# Misc Django secrets
kubectl create secret generic miscbackend-djangoconf2023-wafer --from-literal=PROD_SECRET_KEY=$PROD_SECRET_KEY



# SENDGRID
kubectl create secret generic sendgrid-djangoconf2023-wafer --from-literal=SENDGRID_API_KEY=$SENDGRID_API_KEY