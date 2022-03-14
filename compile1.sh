mvn clean compile
mvn compile exec:java \
-Dexec.mainClass=com.google.cloud.teleport.templates.PubSubToBigQuery \
-Dexec.cleanupDaemonThreads=false \
-Dexec.args=" \
--streaming \
--enableStreamingEngine \
--project=${PROJECT} \
--region=us-central1 \
--stagingLocation=${BUCKET_NAME}/staging \
--tempLocation=${TEMP_LOCATION} \
--templateLocation=${TEMPLATE} \
--useSubscription=true \
--runner=DataflowRunner "
#--parameters=gcpTempLocation=${TEMP_LOCATION}"
#-Dexec.mainClass=com.google.cloud.teleport.templates.PubSubToBigQueryBatched \
