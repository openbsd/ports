# $OpenBSD: java.port.mk,v 1.38 2019/09/23 16:54:23 kurt Exp $

# Set MODJAVA_VER to x.y or x.y+ based on the version of the jdk needed
# for the port. x.y means any x.y jdk. x.y+ means any x.y jdk or higher
# version. Valid values for x.y are 1.8 or 11.

MODJAVA_VER?=

# Based on the MODJAVA_VER, NO_BUILD and MACHINE_ARCH, the following
# things will be setup:
#
#   ONLY_FOR_ARCHS if not already set.
#   BUILD_DEPENDS on a jdk (only if not NO_BUILD)
#   JAVA_HOME to pass on to the port build
#   RUN_DEPENDS for all jdk's that can run the port.
#   MODJAVA_RUN_DEPENDS with same value as RUN_DEPENDS
#   to assist with multipackages.
#
# NOTE: All source built java ports must properly set javac -source and
# -target build arguments. Depending on the architecture an older level
# port may be built by a newer jdk. The JAVA_HOME variable points to the
# build jdk not the default RUN_DEPEND jdk, so it should not be used to
# set a default jdk to run with. The javaPathHelper port should be used
# to set the default JAVA_HOME or JAVACMD vars for a package.
#

.if ${MODJAVA_VER:S/+//} != "1.8" && ${MODJAVA_VER:S/+//} != "11"
    ERRORS+="Fatal: MODJAVA_VER must be set to a valid value."
.endif

.if ${MODJAVA_VER} == "1.8"
    ONLY_FOR_ARCHS?= i386 amd64
.else
    ONLY_FOR_ARCHS?= i386 amd64 aarch64
.endif

.if ${MACHINE_ARCH} == "aarch64"
    JAVA_HOME= ${LOCALBASE}/jdk-11
    MODJAVA_BUILD_DEPENDS+= jdk->=11v0,<12v0:devel/jdk/11
.else
.   if ${MODJAVA_VER:S/+//} == "1.8"
        JAVA_HOME= ${LOCALBASE}/jdk-1.8.0
        MODJAVA_BUILD_DEPENDS= jdk->=1.8v0,<1.9v0:devel/jdk/1.8
.   else
        JAVA_HOME= ${LOCALBASE}/jdk-11
        MODJAVA_BUILD_DEPENDS+= jdk->=11v0,<12v0:devel/jdk/11
.   endif
.endif

.if ${MODJAVA_VER:M*+}
    MODJAVA_RUN_DEPENDS= ${MODJAVA_BUILD_DEPENDS:C/,.*:/:/}
.else
    MODJAVA_RUN_DEPENDS= ${MODJAVA_BUILD_DEPENDS}
.endif
RUN_DEPENDS+= ${MODJAVA_RUN_DEPENDS}

.if ${NO_BUILD:L} != "yes"
    BUILD_DEPENDS+= ${MODJAVA_BUILD_DEPENDS}
    CONFIGURE_ENV += JAVA_HOME=${JAVA_HOME}
    MAKE_ENV += JAVA_HOME=${JAVA_HOME}
.endif

# Append 'java' to the list of categories.
CATEGORIES+=	java

# Allow ports to that use devel/apache-ant to set MODJAVA_BUILD=ant
# In case a non-standard build target, build file or build directory are
# needed, set MODJAVA_BUILD_TARGET_NAME, MODJAVA_BUILD_FILE or MODJAVA_BUILD_DIR
# respectively.
.if defined(MODJAVA_BUILD) && ${MODJAVA_BUILD:L} == "ant"
    BUILD_DEPENDS += devel/apache-ant
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
