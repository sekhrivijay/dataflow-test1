echo "mvn clean compile exec:java -Dexec.mainClass=com.google.cloud.teleport.templates.PubSubToBigQueryBatched -Dexec.cleanupDaemonThreads=false -Dexec.args=\" \
--streaming \
--enableStreamingEngine \
--project=${_PROJECT} \
--region=us-central1 \
--stagingLocation=${_BUCKET_NAME}/staging \
--tempLocation=${_TEMP_LOCATION} \
--templateLocation=${_TEMPLATE} \
--useSubscription=true \
--runner=DataflowRunner "

mvn clean compile exec:java \
-Dexec.mainClass=com.google.cloud.teleport.templates.PubSubToBigQueryBatched \
-Dexec.cleanupDaemonThreads=false \
-Dexec.args=" \
--streaming \
--enableStreamingEngine \
--project=${_PROJECT} \
--region=us-central1 \
--stagingLocation=${_BUCKET_NAME}/staging \
--tempLocation=${_TEMP_LOCATION} \
--templateLocation=${_TEMPLATE} \
--useSubscription=true \
--runner=DataflowRunner "
