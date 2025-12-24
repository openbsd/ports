#!/bin/sh

DIRBASEZAP=${TRUEPREFIX}/share/zaproxy/
ZAPJAR=${DIRBASEZAP}zap-${VERSION}.jar
ZAPDIR=${HOME}/.ZAP
JAVA_CMD=$(javaPathHelper -c zaproxy)

export JDK_JAVA_OPTIONS=${JDK_JAVA_OPTIONS:--Dawt.useSystemAAFontSettings=on}

for arg do
    case $arg in
        -Xmx*)
            # Overridden by the user
            JMEM=$arg
            ;;
        --jvmdebug*)
            JAVADEBUGPORT=${arg#--jvmdebug}
            JAVADEBUGPORT=${JAVADEBUGPORT#=}

            if [ -z "$JAVADEBUGPORT" ]; then
                JAVADEBUGPORT=1044
            fi

            JAVADEBUG="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=127.0.0.1:$JAVADEBUGPORT"
            ;;
        -dir)
            shift
            ZAPDIR=$1
            ;;
        *)
            # Put the (possibly modified) argument back at the end
            # of the list of arguments and shift off the first item.
            set -- "$@" "$arg"
    esac
    shift
done

JVMPROPS="${ZAPDIR}/.ZAP_JVM.properties" 

if [ -z "$JMEM" -a -f $JVMPROPS ]; then
  # Local jvm properties file present
  JMEM="$(head -1 $JVMPROPS)"
  if [ ! -z "$JMEM" ]; then
    echo "Read custom JVM args from $JVMPROPS"
  fi
fi

if [ -z "$JMEM" ]; then
  # Default java memory setting
  # 1/2 of the datasize ulimit
  JMEM="-Xmx$(($(ulimit -d)/1024/2 ))m"
fi

echo "Using JVM args: $JMEM"

if [ -n "$JAVADEBUG" ]
then
  echo "Setting debug: $JAVADEBUG"
fi

cd ${DIRBASEZAP}
exec ${JAVA_CMD} ${JMEM} ${JAVADEBUG} -jar "${ZAPJAR}" -dir ${ZAPDIR} -installdir ${DIRBASEZAP} "$@"
