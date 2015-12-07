#!/bin/sh

DIRBASEZAP=${TRUEPREFIX}/share/zaproxy/
ZAP=${DIRBASEZAP}zap-${VERSION}.jar

JAVA_CMD=$(javaPathHelper -c zaproxy)

JVMPROPS="~/.ZAP/.ZAP_JVM.properties" 
if [ -f $JVMPROPS ]; then
  # Local jvm properties file present
  JMEM=$(head -1 $JVMPROPS)
else
  MEM=$(($(ulimit -m )/1024 ))
fi

if [ ! -z $JMEM ]; then
  echo "Using jvm memory setting from " ~/.ZAP_JVM.properties
elif [ -z $MEM ]; then
  echo "Failed to obtain current memory, using jvm default memory settings"
else
  echo "Available memory: " $MEM "MB"
  if [ $MEM -gt 1500 ]; then
    JMEM="-Xmx512m"
  else
    if [ $MEM -gt 900 ] ; then
      JMEM="-Xmx256m"
    else
      if [ $MEM -gt 512 ] ; then
        JMEM="-Xmx128m"
      fi
    fi
  fi
fi

if [ -n "$JMEM" ]
then
  echo "Setting jvm heap size: $JMEM"
fi

cd ${DIRBASEZAP}
exec ${JAVA_CMD} ${JMEM} -jar "${ZAP}" -dir ~/.ZAP/ -installdir ${DIRBASEZAP} "$@"
