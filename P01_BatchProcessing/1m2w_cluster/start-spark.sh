#!/bin/bash

if [ "$SPARK_MODE" == "master" ]; then
    echo "Starting Spark master node"
    $SPARK_HOME/sbin/start-master.sh
    jupyter notebook --ip=0.0.0.0 --allow-root --NotebookApp.token=''
elif [ "$SPARK_MODE" == "worker" ]; then
    echo "Starting Spark worker node"
    $SPARK_HOME/sbin/start-slave.sh $SPARK_MASTER
else
    echo "Please specify a valid SPARK_MODE: master or worker"
fi

# Keep the container running
tail -f /dev/null
