# $OpenBSD: java.port.mk,v 1.19 2009/11/09 11:02:58 sthen Exp $

# Set MODJAVA_VER to x.y or x.y+ based on the version
# of the jdk needed for the port. x.y  means any x.y jdk.
# x.y+ means any x.y jdk or higher version. Valid values
# for x.y are 1.3, 1.4, 1.5, 1.6 or 1.7

MODJAVA_VER?=

# Set MODJAVA_JRERUN=yes if the port can run with just
# the jre. This will add the jre's to the RUN_DEPENDS
# based on how MODJAVA_VER is set.

MODJAVA_JRERUN?=no

# Based on the MODJAVA_VER, MODJAVA_JRERUN, NO_BUILD
# and MACHINE_ARCH, the following things will be setup:
#   ONLY_FOR_ARCHS if not already set.
#   BUILD_DEPENDS on a jdk (only if not NO_BUILD)
#   JAVA_HOME to pass on to the port build (only if not NO_BUILD)
#   RUN_DEPENDS for all jdk's and jre's that can run
#   the port.
#   MODJAVA_RUN_DEPENDS with same value as RUN_DEPENDS
#   to assist with multipackages.
#
# NOTE: All source built java ports must properly set
# javac -source and -target build arguments. Depending
# on the architecture a 1.3 or 1.4 level port may be built
# by a 1.5 jdk. The JAVA_HOME variable points to the
# build jdk not the default RUN_DEPEND jdk, so it
# should not be used to set a default jdk to run with.
# The javaPathHelper port should be used to set the
# default JAVA_HOME or JAVACMD vars for a package.
#

.if ${MODJAVA_VER} == "1.3" || ${MODJAVA_VER} == "1.4"
    BROKEN=MODJAVA_VER=${MODJAVA_VER} only ports are not supported
.elif ${MODJAVA_VER} == "1.3+" || ${MODJAVA_VER} == "1.4+"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
     BUILD_DEPENDS+= :jdk->=1.5.0,<1.6:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     MODJAVA_RUN_DEPENDS= :jdk->=1.5.0|jre->=1.5.0|kaffe-*|jamvm-*:devel/jdk/1.5
.  else
     MODJAVA_RUN_DEPENDS= :jdk->=1.5.0|kaffe-*:devel/jdk/1.5
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.5"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
     BUILD_DEPENDS+= :jdk->=1.5.0,<1.6:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     _MODJAVA_RUNDEP= jdk->=1.5.0,<1.6|jre->=1.5.0,<1.6
.  else
     _MODJAVA_RUNDEP= jdk->=1.5.0,<1.6
.  endif
.  if ${MODJAVA_VER} == "1.5+"
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP:S/,<1.6//g}:devel/jdk/1.5
.  else
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}:devel/jdk/1.5
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.6"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.6.0
     BUILD_DEPENDS+= :jdk->=1.6.0,<1.7:devel/jdk/1.6
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     _MODJAVA_RUNDEP= jdk->=1.6.0,<1.7|jre->=1.6.0,<1.7
.  else
     _MODJAVA_RUNDEP= jdk->=1.6.0,<1.7
.  endif
.  if ${MODJAVA_VER} == "1.6+"
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP:S/,<1.7//g}:devel/jdk/1.6
.  else
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}:devel/jdk/1.6
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.7"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.7.0
     BUILD_DEPENDS+= :jdk->=1.7.0,<1.8:devel/jdk/1.7
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     _MODJAVA_RUNDEP= jdk->=1.7.0,<1.8|jre->=1.7.0,<1.8
.  else
     _MODJAVA_RUNDEP= jdk->=1.7.0,<1.8
.  endif
.  if ${MODJAVA_VER} == "1.7+"
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP:S/,<1.8//g}:devel/jdk/1.7
.  else
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}:devel/jdk/1.7
.  endif
.else
   ERRORS+="Fatal: MODJAVA_VER must be set to a valid value."
.endif

RUN_DEPENDS+= ${MODJAVA_RUN_DEPENDS}
