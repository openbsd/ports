ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT =	software reverse engineering (SRE) framework

VERSION = 	12.0.2
GHIDRA_DATE =	20260129

GH_ACCOUNT =	NationalSecurityAgency
GH_PROJECT =	ghidra
GH_TAGNAME =	Ghidra_${VERSION}_build
DISTNAME =	ghidra-${VERSION}

CATEGORIES =	security

HOMEPAGE =	https://www.ghidra-sre.org/

# Apache v2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

SITES.a =		https://www.intricatesoftware.com/distfiles/

# Keep these in sync with java/jna and devel/protobuf
JNA_VER =		5.18.1
PROTOBUF_VER =		6.33.4
PROTOBUF_JAVA_VER =	4.33.4

DISTFILES.a +=		ghidra-Ghidra_${VERSION}_build_dependencies${EXTRACT_SUFX}

MODULES =		java lang/python
MODJAVA_VER =		21+

BUILD_DEPENDS =		archivers/unzip \
			devel/bison \
			devel/protobuf>=${PROTOBUF_VER} \
			devel/py-pip \
			java/gradle \
			java/jna>=${JNA_VER} \
			shells/bash

RUN_DEPENDS +=		devel/gdb \
			devel/py-protobuf>=${PROTOBUF_VER} \
			java/javaPathHelper \
			shells/bash \
			sysutils/py-psutil

# Task :Docking:buildHelpFiles/GHelpBuilder.java writes log files
# under $HOME so point user.home inside ${WRKSRC}
MAKE_ENV +=		JDK_JAVA_OPTIONS="-Duser.home='${WRKSRC}/home'"

.if ${MACHINE_ARCH} == "amd64"
GHIDRA_ARCH =		openbsd_x86_64
.else
GHIDRA_ARCH =		openbsd_arm_64
.endif

NO_TEST =		Yes

SUBST_VARS +=		CXX GHIDRA_DATE GHIDRA_ARCH VERSION WRKDIR \
			JNA_VER PROTOBUF_VER PROTOBUF_JAVA_VER

EXTENSIONS =		BSimElasticPlugin GnuDisassembler Lisa \
			MachineLearning SampleTablePlugin SleighDevTools \
			SymbolicSummaryZ3 bundle_examples sample

post-extract:
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/ghidraRun
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh
	@perl -pi -e 's,(application.version)=.*,\1=${VERSION},' \
		${WRKSRC}/Ghidra/application.properties
	@mkdir -p ${WRKSRC}/Ghidra/Framework/Pty/src/main/java/ghidra/pty/openbsd
	@cd ${WRKSRC}/Ghidra/Framework/Pty/src/main/java/ghidra/pty/linux/ && \
		for f in Linux* ; do \
			cp $$f ../openbsd/OpenBSD$${f#Linux} ; done
	@mkdir -p ${WRKSRC}/dependencies/flatRepo
	@cp ${TRUEPREFIX}/share/java/classes/jna.jar \
		${WRKSRC}/dependencies/flatRepo/jna-${JNA_VER}.jar
	@cp ${TRUEPREFIX}/share/java/classes/jna-platform.jar \
		${WRKSRC}/dependencies/flatRepo/jna-platform-${JNA_VER}.jar

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/gradle.properties \
		${WRKSRC}/Ghidra/Framework/Pty/Module.manifest \
		${WRKSRC}/Ghidra/Framework/Pty/build.gradle \
		${WRKSRC}/Ghidra/Debug/ProposedUtils/Module.manifest \
		${WRKSRC}/Ghidra/Debug/Debugger-rmi-trace/Module.manifest \
		${WRKSRC}/Ghidra/Debug/Debugger-rmi-trace/build.gradle \
		${WRKSRC}/Ghidra/Test/DebuggerIntegrationTest/src/test.slow/java/agent/dbgeng/rmi/DbgEngConnectorsTest.java \
		${WRKSRC}/Ghidra/Test/DebuggerIntegrationTest/src/test.slow/java/agent/drgn/rmi/DrgnConnectorsTest.java \
		${WRKSRC}/Ghidra/Test/DebuggerIntegrationTest/src/test.slow/java/agent/gdb/rmi/GdbConnectorsTest.java \
		${WRKSRC}/Ghidra/Test/DebuggerIntegrationTest/src/test.slow/java/agent/lldb/rmi/LldbConnectorsTest.java

# build-dependencies is a maintainer target intended to be run when upgrading
# to a new version of ghidra or when protobuf or jna version changes. The
# process is; bump the VERSION, comment out DISTFILES.a, make makesum and finish
# with make build-dependencies clean
#
# Note that build-dependencies is run as a regular user, with access to the
# network for downloading the build dependencies. It deletes everything under
# WRKSRC because of the permission changes.

# Adapted from the instructions here:
# https://github.com/NationalSecurityAgency/ghidra/blob/master/DevGuide.md#offline-development-environment

build-dependencies: configure
	set -x; cd ${WRKSRC}; \
	    ${_PBUILD} rm -rf dependencies; \
	    ${_PBUILD} mkdir dependencies; \
	    ${_PBUILD} chmod -R ug=rwX,o=rX .; \
	    umask 007; \
	    env HOME='/ghidra-writes_to_HOME' JAVA_HOME=${JAVA_HOME} \
		gradle --no-daemon --stacktrace \
		-g ${WRKSRC}/dependencies/gradle \
		-I ${WRKSRC}/gradle/support/fetchDependencies.gradle; \
	    env HOME='/ghidra-writes_to_HOME' JAVA_HOME=${JAVA_HOME} \
		gradle --no-daemon --stacktrace \
		-g ${WRKSRC}/dependencies/gradle \
		prepDev; \
	    rm -rf dependencies/downloads; \
	    find dependencies -path '*/.tmp*' -o -name '*.log' -delete; \
	    find dependencies -name net.java.dev.jna | xargs rm -rf
	cd ${WRKDIR} && \
		tar czf ~/ghidra-Ghidra_${VERSION}_build_dependencies.tar.gz \
		    ghidra-Ghidra_${VERSION}_build/dependencies
	rm -rf ${WRKSRC}/*
	@echo ~/ghidra-Ghidra_${VERSION}_build_dependencies.tar.gz has been created

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} gradle --no-daemon --stacktrace \
		-g ${WRKSRC}/dependencies/gradle --offline buildGhidra

# not yet: requires networking, prepDev does not download test gradle/maven deps
#do-test:
#	@cd ${WRKSRC} && ${SETENV} ${TEST_ENV} gradle --no-daemon --stacktrace \
#		-g ${WRKSRC}/dependencies/gradle --offline unitTestReport

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java
	unzip -d ${PREFIX}/share/java \
		${WRKSRC}/build/dist/ghidra_${VERSION}_DEV_*_${GHIDRA_ARCH}.zip \
		-x *.orig.port
	mv ${PREFIX}/share/java/ghidra_${VERSION}_DEV ${PREFIX}/share/java/ghidra
.for name in ${EXTENSIONS}
	cd ${PREFIX}/share/java/ghidra/Extensions/Ghidra/ && \
		mv ghidra_${VERSION}_DEV_*_${name}.zip \
			ghidra_${VERSION}_DEV_${GHIDRA_DATE}_${name}.zip
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/Ghidra/RuntimeScripts/Linux/ghidraRun \
		${PREFIX}/share/java/ghidra/ghidraRun
	ln -s ${TRUEPREFIX}/share/java/ghidra/ghidraRun ${PREFIX}/bin/ghidraRun
	${INSTALL_SCRIPT} ${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh \
		${PREFIX}/share/java/ghidra/support/launch.sh

.include <bsd.port.mk>
