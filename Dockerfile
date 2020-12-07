# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

#Set JBOSS_HOME Environment  Variable
ENV JBOSS_HOME /opt/jboss/jboss-6.1.0.Final

COPY . /app
WORKDIR /app

RUN cd /opt/jboss && unzip /app/jboss-as-distribution-6.1.0.Final.zip 

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

#Expose
EXPOSE 8080 

#CMD to run
CMD ["/opt/jboss/jboss-6.1.0.Final/bin/run.sh", "-b", "0.0.0.0"]
