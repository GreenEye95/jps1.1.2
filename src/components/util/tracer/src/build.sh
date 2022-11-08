#! /bin/sh

# $Id: build.sh,v 1.3.4.1 2001/03/14 23:49:07 brydon Exp $

if [ -z "$JAVA_HOME" ]
then
JAVACMD=`which java`
if [ -z "$JAVACMD" ]
then
echo "Cannot find JAVA. Please set your PATH."
exit 1
fi
JAVA_BINDIR=`dirname $JAVACMD`
JAVA_HOME=$JAVA_BINDIR/..
fi

if [ -z "$J2EE_HOME" ]
then
echo "Please set J2EE_HOME."
exit 1
fi

JAVACMD=$JAVA_HOME/bin/java

ANT_HOME=../../../../lib/ant
ANT_CLASSPATH=$JAVA_HOME/lib/tools.jar
ANT_CLASSPATH=$ANT_HOME/lib/ant.jar:$ANT_HOME/lib/xml.jar:$ANT_CLASSPATH
ANT_CLASSPATH=$J2EE_HOME/lib/j2ee.jar:$ANT_CLASSPATH
$JAVACMD -classpath $ANT_CLASSPATH -Dant.home=$ANT_HOME -Dj2ee.home=$J2EE_HOME org.apache.tools.ant.Main "$@"
