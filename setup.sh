export PROJECT=sekhrivijayrcs1
export BUCKET_NAME="gs://sekhrivijay-rcs-dataflow-test1"
export TEMPLATE="${BUCKET_NAME}/templates/PubSubToBigQueryStream.json"
export TEMP_LOCATION="${BUCKET_NAME}/temp"
export INPUT_FILE_PATTERN="gs://sekhrivijayrcs1-input-data/*.csv"
export GOOGLE_APPLICATION_CREDENTIALS=sa.json
gcloud config set project ${PROJECT}
