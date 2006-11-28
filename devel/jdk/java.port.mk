# $OpenBSD: java.port.mk,v 1.10 2006/11/28 14:28:25 kurt Exp $

# Set MODJAVA_VER to x.y or x.y+ based on the version
# of the jdk needed for the port. x.y  means any x.y jdk.
# x.y+ means any x.y jdk or higher version. Valid values
# for x.y are 1.3, 1.4 or 1.5.

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
# on the architecture a 1.3 or 1.4 level port my built
# by a 1.5 jdk. The JAVA_HOME variable points to the
# build jdk not the default RUN_DEPEND jdk, so it
# should not be used to set a default jdk to run with.
# The javaPathHelper port should be used to set the
# default JAVA_HOME or JAVACMD vars for a package.
#

.if ${MACHINE_ARCH} == "amd64" && (${MODJAVA_VER} == "1.3+" || ${MODJAVA_VER} == "1.4+")
# this is a special case for amd64. since amd64 doesn't have 1.3 or 1.4,
# but 1.5 can run any 1.3+ or 1.4+ port, so special case them to run
# on 1.5+ for amd64. Also add in jamvm and kaffe since they likely can
# run these too. 
   ONLY_FOR_ARCHS?= amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
     BUILD_DEPENDS+= :jdk-1.5.0:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     MODJAVA_RUN_DEPENDS= :jdk->=1.5.0|jre->=1.5.0|kaffe-*|jamvm-*:devel/jdk/1.5
.  else
     MODJAVA_RUN_DEPENDS= :jdk->=1.5.0|kaffe-*:devel/jdk/1.5
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.3"
   ONLY_FOR_ARCHS?= arm i386 powerpc sparc
.  if ${NO_BUILD:L} != "yes"
.    if ${MACHINE_ARCH} == "i386" 
       JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
       BUILD_DEPENDS+= :jdk-1.5.0:devel/jdk/1.5
.    else
       JAVA_HOME= ${LOCALBASE}/jdk-1.3.1
       BUILD_DEPENDS+= :jdk-1.3.1:devel/jdk/1.3
.    endif
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
.    if ${MODJAVA_VER} == "1.3+"
       _MODJAVA_RUNDEP= jdk-1.3.1*|jre-1.3.1*|jdk->=1.4.2p9|jre->=1.4.2p9|kaffe-*|jamvm-*
.    else
       _MODJAVA_RUNDEP= jdk-1.3.1|jre-1.3.1
.    endif
.  else
.    if ${MODJAVA_VER} == "1.3+"
       _MODJAVA_RUNDEP= jdk-1.3.1*|jdk->=1.4.2p9|kaffe-*
.    else
       _MODJAVA_RUNDEP= jdk-1.3.1
.    endif
.  endif
.  if ${MACHINE_ARCH} == "i386"
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}|jdk-linux-1.3.1*:devel/jdk/1.3
.  else
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}:devel/jdk/1.3
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.4"
   ONLY_FOR_ARCHS?= i386
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
     BUILD_DEPENDS+= :jdk-1.5.0:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
.    if ${MODJAVA_VER} == "1.4+"
       MODJAVA_RUN_DEPENDS= :jdk->=1.4.2p9|jre->=1.4.2p9|kaffe-*|jamvm-*:devel/jdk/1.4
.    else
       MODJAVA_RUN_DEPENDS= :jdk->=1.4.2p9,<1.5|jre->=1.4.2p9,<1.5|kaffe-*|jamvm-*:devel/jdk/1.4
.    endif
.  else
.    if ${MODJAVA_VER} == "1.4+"
       MODJAVA_RUN_DEPENDS= :jdk->=1.4.2p9|kaffe-*:devel/jdk/1.4
.    else
       MODJAVA_RUN_DEPENDS= :jdk->=1.4.2p9,<1.5|kaffe-*:devel/jdk/1.4
.    endif
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.5"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.5.0
     BUILD_DEPENDS+= :jdk-1.5.0:devel/jdk/1.5
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     _MODJAVA_RUNDEP= jdk-1.5.0|jre-1.5.0
.  else
     _MODJAVA_RUNDEP= jdk-1.5.0
.  endif
.  if ${MODJAVA_VER} == "1.5+"
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP:S/-/->=/g}:devel/jdk/1.5
.  else
     MODJAVA_RUN_DEPENDS= :${_MODJAVA_RUNDEP}:devel/jdk/1.5
.  endif
.else
   ERRORS+="Fatal: MODJAVA_VER must be set to a valid value."
.endif

RUN_DEPENDS+= ${MODJAVA_RUN_DEPENDS}
