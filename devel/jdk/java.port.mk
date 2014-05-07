# $OpenBSD: java.port.mk,v 1.33 2014/05/07 15:42:15 kurt Exp $

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
# on the architecture a 1.3, 1.4 or 1.5 level port may be
# built by a 1.6 jdk. The JAVA_HOME variable points to the
# build jdk not the default RUN_DEPEND jdk, so it
# should not be used to set a default jdk to run with.
# The javaPathHelper port should be used to set the
# default JAVA_HOME or JAVACMD vars for a package.
#

.if ${MODJAVA_VER} == "1.3" || ${MODJAVA_VER} == "1.4" || ${MODJAVA_VER} == "1.5" || ${MODJAVA_VER} == "1.6"
    BROKEN=MODJAVA_VER=${MODJAVA_VER} only ports are not supported
.elif ${MODJAVA_VER} == "1.3+" || ${MODJAVA_VER} == "1.4+" || ${MODJAVA_VER} == "1.5+" || ${MODJAVA_VER} == "1.6+"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.7.0
     BUILD_DEPENDS+= jdk->=1.7.0,<1.8v0:devel/jdk/1.7
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     MODJAVA_RUN_DEPENDS= jdk->=1.7.0|jre->=1.7.0:devel/jdk/1.7
.  else
     MODJAVA_RUN_DEPENDS= jdk->=1.7.0:devel/jdk/1.7
.  endif
.elif ${MODJAVA_VER:S/+//} == "1.7"
   ONLY_FOR_ARCHS?= i386 amd64
.  if ${NO_BUILD:L} != "yes"
     JAVA_HOME= ${LOCALBASE}/jdk-1.7.0
     BUILD_DEPENDS+= jdk->=1.7.0,<1.8v0:devel/jdk/1.7
.  endif
.  if ${MODJAVA_JRERUN:L} == "yes"
     _MODJAVA_RUNDEP= jdk->=1.7.0,<1.8v0|jre->=1.7.0,<1.8v0
.  else
     _MODJAVA_RUNDEP= jdk->=1.7.0,<1.8v0
.  endif
.  if ${MODJAVA_VER} == "1.7+"
     MODJAVA_RUN_DEPENDS= ${_MODJAVA_RUNDEP:S/,<1.8v0//g}:devel/jdk/1.7
.  else
     MODJAVA_RUN_DEPENDS= ${_MODJAVA_RUNDEP}:devel/jdk/1.7
.  endif
.else
   ERRORS+="Fatal: MODJAVA_VER must be set to a valid value."
.endif

RUN_DEPENDS+= ${MODJAVA_RUN_DEPENDS}

# Append 'java' to the list of categories.
CATEGORIES+=	java

# Allow ports to that use devel/apache-ant to set MODJAVA_BUILD=ant
# In case a non-standard build target, build file or build directory are
# needed, set MODJAVA_BUILD_TARGET_NAME, MODJAVA_BUILD_FILE or MODJAVA_BUILD_DIR
# respectively.
.if defined(MODJAVA_BUILD) && ${MODJAVA_BUILD:L} == "ant"
    BUILD_DEPENDS += devel/apache-ant
    MAKE_ENV += JAVA_HOME=${JAVA_HOME}
    MODJAVA_BUILD_TARGET_NAME ?=
    MODJAVA_BUILD_FILE ?= build.xml
    MODJAVA_BUILD_DIR ?= ${WRKSRC}
    MODJAVA_BUILD_ARGS ?=

MODJAVA_BUILD_TARGET = \
	cd ${MODJAVA_BUILD_DIR} && \
		${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
		-buildfile ${MODJAVA_BUILD_FILE} ${MODJAVA_BUILD_TARGET_NAME} \
		${MODJAVA_BUILD_ARGS}
.   if !target(do-build)
do-build:
	${MODJAVA_BUILD_TARGET}
.   endif
.endif

# Convenience variables.
# Ports that install .jar files for public use (ie, in ${MODJAVA_JAR_DIR})
# please install unversioned .jar files. If a port installs
# multiple .jar files, use a ${MODJAVA_JAR_DIR}/<project_name>/ prefix.
# This will help other ports to pickup these classes.
MODJAVA_SHARE_DIR = ${PREFIX}/share/java/
MODJAVA_JAR_DIR   = ${MODJAVA_SHARE_DIR}/classes/
MODJAVA_EXAMPLE_DIR = ${MODJAVA_SHARE_DIR}/examples/
MODJAVA_DOC_DIR   = ${MODJAVA_SHARE_DIR}/doc/

SUBST_VARS +=	MODJAVA_SHARE_DIR MODJAVA_JAR_DIR MODJAVA_EXAMPLE_DIR \
		MODJAVA_DOC_DIR
