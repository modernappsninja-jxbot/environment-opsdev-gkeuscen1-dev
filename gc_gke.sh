#!/bin/bash

set -euo pipefail

###################################################################################################
#
#  WARNING: this command is experimental and the generated script should be executed at the users own risk.  We use this
#  generated command on the Jenkins X project itself but it has not been tested on other clusters.
#
###################################################################################################

# Project usecasedev

# No firewalls found for deletion

gcloud compute disks delete --zone=us-central1-b --quiet gke-dev-gkeuscen1-00ef-pvc-c417ff9d-48c0-11ea-b6b9-42010a80017b --project usecasedev || true
gcloud compute disks delete --zone=us-central1-b --quiet gke-dev-gkeuscen1-00ef-pvc-ca9e9601-48c0-11ea-b6b9-42010a80017b --project usecasedev || true

# No addresses found for deletion


gcloud iam service-accounts delete dev-gkeuscen1-ko@usecasedev.iam.gserviceaccount.com --quiet --project usecasedev || true
gcloud iam service-accounts delete h3mp-gkeuswes1-dn@usecasedev.iam.gserviceaccount.com --quiet --project usecasedev || true
gcloud iam service-accounts delete dev-gkeuscen1-vt@usecasedev.iam.gserviceaccount.com --quiet --project usecasedev || true
gcloud iam service-accounts delete dev-gkeuscen1-dn@usecasedev.iam.gserviceaccount.com --quiet --project usecasedev || true
gcloud iam service-accounts delete h3mp-gkeuswes1-ko@usecasedev.iam.gserviceaccount.com --quiet --project usecasedev || true
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-vt@usecasedev.iam.gserviceaccount.com --role=roles/cloudkms.admin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-vt@usecasedev.iam.gserviceaccount.com --role=roles/cloudkms.cryptoKeyEncrypterDecrypter --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-dn@usecasedev.iam.gserviceaccount.com --role=roles/dns.admin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:h3mp-gkeuswes1-dn@usecasedev.iam.gserviceaccount.com --role=roles/dns.admin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.admin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:h3mp-gkeuswes1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.admin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.objectAdmin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-vt@usecasedev.iam.gserviceaccount.com --role=roles/storage.objectAdmin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:h3mp-gkeuswes1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.objectAdmin --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:dev-gkeuscen1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.objectCreator --quiet
gcloud projects remove-iam-policy-binding usecasedev --member=serviceAccount:h3mp-gkeuswes1-ko@usecasedev.iam.gserviceaccount.com --role=roles/storage.objectCreator --quiet

