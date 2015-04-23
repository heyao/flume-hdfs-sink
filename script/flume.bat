echo off

echo working folder: %CD%
set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_60
set M2_HOME=C:\3ray\tool\1programing\java\maven\apache-maven-3.0.4
set MAVEN_OPTS=-XX:MaxPermSize=1024M
set PATH=%M2_HOME%\bin;%JAVA_HOME%\bin;%PATH%

echo classpath: %classpath%

"%JAVA_HOME%\bin\java.exe" -Xmx2000m -Dlog4j.configuration=file:///C:\3ray\tool\Hadoop\flume\apache-flume-1.5.0-bin\log4j.properties -cp "apache-flume-1.5.0-bin\lib\*" org.apache.flume.node.Application -f flume.conf -n agent1  2>&1