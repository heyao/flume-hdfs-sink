# flume-hdfs-sink

add new feature for integration with oozie: to create done file for HDFS Sink to signal a folder transfer complete.
it need following params,  the reason using timer is to create doneFlag for latest folder when long time no new file coming.

hdfs.doneFlag=done (default disabled)
hdfs.useLocalTimeStamp=true (must use local time to enable doneFlag)
hdfs.checkFolderDoneTimerInterval=60 (timer interval(seconds) to check if create doneFlag)
