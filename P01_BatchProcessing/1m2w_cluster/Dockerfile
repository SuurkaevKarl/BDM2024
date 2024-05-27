FROM quay.io/jupyter/pyspark-notebook:latest
USER root
#RUN apt-get update && \
#    apt-get install -y curl && \
#    curl -L -o spark.tgz http://www.apache.org/dyn/closer.lua/spark/spark-3.0.0/spark-3.0.0-bin-hadoop2.7.tgz && \
#    tar -xzf spark.tgz -C /usr/local && \
#    mv /usr/local/spark-3.0.0-bin-hadoop2.7 /usr/local/spark && \
#    rm spark.tgz
RUN pip install shapely
# Set environment variables for Spark
ENV SPARK_HOME /usr/local/spark
ENV PATH $SPARK_HOME/bin:$PATH

# Copy start-spark.sh script to the container
COPY start-spark.sh /usr/local/bin/start-spark.sh
RUN chmod +x /usr/local/bin/start-spark.sh

USER jovyan
# Define the entrypoint
ENTRYPOINT ["/usr/local/bin/start-spark.sh"]
