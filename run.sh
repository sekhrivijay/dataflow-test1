export JOB_NAME="pubsub-to-bq--$USER`date +%Y%m%d-%H%M%S-%N`"


gcloud beta dataflow jobs run ${JOB_NAME} \
--gcs-location=${TEMPLATE} \
--enable-streaming-engine \
--num-workers 1 \
--staging-location ${TEMP_LOCATION} \
--region=us-central1 \
--worker-machine-type=n2-standard-8 \
--additional-experiments=enable_streaming_engine,min_num_workers=1,autoscaling_algorithm=THROUGHPUT_BASED \
--parameters "inputSubscription=projects/sekhrivijayrcs1/subscriptions/testsub,outputTableSpec=sekhrivijayrcs1:testdataset.testtable"
#,outputDeadletterTable=sekhrivijayrcs1:testdataset.deadtable"

#--number-of-worker-harness-threads=500 \
# --experiments=enable_streaming_engine
#--worker-machine-type=e2-standard-4 \

