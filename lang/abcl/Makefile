# $OpenBSD: Makefile,v 1.5 2014/08/10 09:58:05 espie Exp $

COMMENT =		Common Lisp dialect for the Java Virtual Machine

V =			1.1.1
DISTNAME =		abcl-src-${V}
PKGNAME =		abcl-${V}
REVISION =		1
PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		http://common-lisp.net/project/armedbear/

MAINTAINER =		Timo Myyra <timo.myyra@wickedbsd.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/$V/

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_BUILD = 	ant
MODJAVA_BUILD_TARGET_NAME =	abcl.jar
MODJAVA_JRERUN = 	Yes

RUN_DEPENDS =		java/javaPathHelper \
			misc/rlwrap

TEST_TARGET =		abcl.test
NO_TEST =		Yes

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
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant ${TEST_TARGET}

.include <bsd.port.mk>
