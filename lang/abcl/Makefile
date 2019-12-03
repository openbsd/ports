# $OpenBSD: Makefile,v 1.17 2019/12/03 19:46:34 solene Exp $

COMMENT =		Common Lisp dialect for the Java Virtual Machine
V =			1.6.0
JUNIT_V =		4.12
DISTNAME =		abcl-src-${V}
PKGNAME =		abcl-${V}
PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		https://abcl.org/

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/$V/
MASTER_SITES0 =		https://github.com/junit-team/junit4/releases/download/r${JUNIT_V}/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			junit-${JUNIT_V}.jar:0

EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MODULES =		java
MODJAVA_VER =		1.8+
MODJAVA_BUILD =		ant
MODJAVA_BUILD_TARGET_NAME =	abcl.jar

RUN_DEPENDS =		java/javaPathHelper \
			misc/rlwrap

TEST_TARGET =		abcl.test

ABCL_HOME =		${PREFIX}/abcl

do-install:
	${INSTALL_DATA_DIR} ${ABCL_HOME}
	${INSTALL_DATA} ${WRKSRC}/dist/abcl.jar ${ABCL_HOME}
	${INSTALL_DATA} ${WRKSRC}/dist/abcl-contrib.jar ${ABCL_HOME}
	${SUBST_PROGRAM} ${FILESDIR}/abcl ${PREFIX}/bin/abcl
	cd ${WRKDIST} && tar -cf - src | tar -C ${ABCL_HOME} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${ABCL_HOME}/src
	${INSTALL_DATA} ${FILESDIR}/abcl_completions ${ABCL_HOME}

do-test:
	cp -v ${FULLDISTDIR}/junit-${JUNIT_V}.jar ${WRKDIR}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
	-Djunit.path=${WRKDIR}/junit-${JUNIT_V}.jar ${TEST_TARGET}

# maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/abcl --noinit --load ${FILESDIR}/gen-completions.lisp

.include <bsd.port.mk>
