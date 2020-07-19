# $OpenBSD: Makefile,v 1.8 2020/07/19 01:29:23 lteo Exp $

# bundled jython has amd64 components for OpenBSD
ONLY_FOR_ARCHS =	amd64

COMMENT =	software reverse engineering (SRE) framework

VERSION = 	9.1.2
GHIDRA_DATE =	20200212

GH_ACCOUNT =	NationalSecurityAgency
GH_PROJECT =	ghidra
GH_TAGNAME =	Ghidra_${VERSION}_build
DISTNAME =	ghidra-${VERSION}

CATEGORIES =	security

HOMEPAGE =	https://www.ghidra-sre.org/

MAINTAINER =	Lawrence Teo <lteo@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

MASTER_SITES0 =		${HOMEPAGE}
MASTER_SITES1 =		https://sourceforge.net/projects/yajsw/files/yajsw/yajsw-stable-${YAJSW_VER}/
MASTER_SITES2 =		https://repo.maven.apache.org/maven2/

EXTRACT_SUFX =		.zip

ST4_VER =		4.1
HAMCREST_VER =		1.3
JAVACC_VER =		5.0
JMOCKIT_VER =		1.44
JSON_SIMPLE_VER =	1.1.1
JUNIT_VER =		4.12
YAJSW_VER =		12.12

# Note that ST4-${ST4_VER}.jar is only needed during build for antlr; it is not
# needed at runtime and therefore does not need to be packed.
JAR_DISTFILES +=	ST4{org/antlr/ST4/${ST4_VER}/ST4}-${ST4_VER}.jar
JAR_DISTFILES +=	hamcrest{org/hamcrest/hamcrest-all/${HAMCREST_VER}/hamcrest}-all-${HAMCREST_VER}.jar
JAR_DISTFILES +=	javacc{net/java/dev/javacc/javacc/${JAVACC_VER}/javacc}-${JAVACC_VER}.jar
JAR_DISTFILES +=	jmockit{org/jmockit/jmockit/${JMOCKIT_VER}/jmockit}-${JMOCKIT_VER}.jar
JAR_DISTFILES +=	json-simple{com/googlecode/json-simple/json-simple/${JSON_SIMPLE_VER}/json-simple}-${JSON_SIMPLE_VER}.jar
JAR_DISTFILES +=	junit{junit/junit/${JUNIT_VER}/junit}-${JUNIT_VER}.jar

DISTFILES =		${DISTNAME}.tar.gz
DISTFILES +=		ghidra_${VERSION}_PUBLIC_${GHIDRA_DATE}${EXTRACT_SUFX}:0
DISTFILES +=		yajsw-stable-${YAJSW_VER}${EXTRACT_SUFX}:1
DISTFILES +=		${JAR_DISTFILES:C/$/:2/}

EXTRACT_ONLY =		${DISTNAME}.tar.gz

COMPILER =		base-clang ports-clang

MODULES =		java
MODJAVA_VER =		11+

BUILD_DEPENDS =		archivers/unzip \
			devel/bison \
			java/gradle \
			shells/bash

RUN_DEPENDS =		shells/bash \
			java/javaPathHelper

NO_TEST =		Yes

SUBST_VARS +=		CXX GHIDRA_DATE VERSION WRKDIR

JAR_DIRS +=		Features-FileFormats
JAR_DIRS +=		Features-Python
JAR_DIRS +=		Framework-Docking
JAR_DIRS +=		Framework-FileSystem
JAR_DIRS +=		Framework-Generic
JAR_DIRS +=		Framework-Graph
JAR_DIRS +=		Framework-Project
JAR_DIRS +=		Framework-SoftwareModeling

post-extract:
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/ghidraRun
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh
	@perl -pi -e 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh
	@perl -pi -e 's,(application.version)=.*,\1=${VERSION},' \
		${WRKSRC}/Ghidra/application.properties

# Steps derived from:
# https://github.com/NationalSecurityAgency/ghidra/blob/master/DevGuide.md
pre-build:
	cp ${FILESDIR}/repos.gradle ${WRKDIR}
	${SUBST_CMD} ${WRKDIR}/repos.gradle \
		${WRKSRC}/GPL/nativeBuildProperties.gradle \
		${WRKSRC}/Ghidra/Framework/Help/src/main/java/help/GHelpBuilder.java
	mkdir ${WRKDIR}/{gradle,home}
	mkdir ${WRKSRC}/flatRepo
.for dir in ${JAR_DIRS}
	unzip -j ${DISTDIR}/ghidra_${VERSION}_PUBLIC_${GHIDRA_DATE}.zip \
		-d ${WRKSRC}/flatRepo \
		ghidra_${VERSION}_PUBLIC/Ghidra/${dir:C/-.*$//}/${dir:C/^.*-//}/lib/*.jar \
		-x ghidra_${VERSION}_PUBLIC/Ghidra/${dir:C/-.*$//}/${dir:C/^.*-//}/lib/${dir:C/^.*-//}.jar
.endfor
.for name in csframework hfsx_dmglib hfsx iharder-base64
	cp ${WRKSRC}/GPL/DMG/data/lib/catacombae_${name}.jar \
		${WRKSRC}/flatRepo/${name}.jar
.endfor
.for jar_file in ${JAR_DISTFILES:C/{.*}//}
	cp ${DISTDIR}/${jar_file} ${WRKSRC}/flatRepo
.endfor
	mkdir -p ${WRKDIR}/ghidra.bin/Ghidra/Features/GhidraServer
	cp ${DISTDIR}/yajsw-stable-${YAJSW_VER}.zip \
		${WRKDIR}/ghidra.bin/Ghidra/Features/GhidraServer
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} gradle -g ${WRKDIR}/gradle \
		--no-daemon --offline --stacktrace -I ${WRKDIR}/repos.gradle \
		yajswDevUnpack

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} gradle -g ${WRKDIR}/gradle \
		--no-daemon --offline --stacktrace -I ${WRKDIR}/repos.gradle \
		buildGhidra

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java
	unzip -d ${PREFIX}/share/java \
		${WRKSRC}/build/dist/ghidra_${VERSION}_DEV_*_openbsd64.zip
	mv ${PREFIX}/share/java/ghidra_${VERSION}_DEV ${PREFIX}/share/java/ghidra
.for name in GnuDisassembler SampleTablePlugin SleighDevTools sample
	mv ${PREFIX}/share/java/ghidra/Extensions/Ghidra/ghidra_${VERSION}_DEV_*_${name}.zip \
		${PREFIX}/share/java/ghidra/Extensions/Ghidra/ghidra_${VERSION}_DEV_${GHIDRA_DATE}_${name}.zip
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/Ghidra/RuntimeScripts/Linux/ghidraRun \
		${PREFIX}/share/java/ghidra/ghidraRun
	ln -s ${TRUEPREFIX}/share/java/ghidra/ghidraRun ${PREFIX}/bin/ghidraRun
	${INSTALL_SCRIPT} ${WRKSRC}/Ghidra/RuntimeScripts/Linux/support/launch.sh \
		${PREFIX}/share/java/ghidra/support/launch.sh

.include <bsd.port.mk>
