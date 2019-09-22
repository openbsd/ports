# $OpenBSD: Makefile,v 1.16 2019/09/22 15:46:37 kurt Exp $

COMMENT =		Common Lisp dialect for the Java Virtual Machine
V =			1.5.0
DISTNAME =		abcl-src-${V}
REVISION =		3
PKGNAME =		abcl-${V}
PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		http://common-lisp.net/project/armedbear/

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/$V/

MODULES =		java
MODJAVA_VER =		1.8
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
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant ${TEST_TARGET}

# maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/abcl --noinit --load ${FILESDIR}/gen-completions.lisp

.include <bsd.port.mk>
