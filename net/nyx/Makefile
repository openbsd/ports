# $OpenBSD: Makefile,v 1.1.1.1 2017/11/13 14:32:56 pascal Exp $

COMMENT =		terminal status monitor for Tor

MODPY_EGG_VERSION =	2.0.4
DISTNAME =		nyx-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://nyx.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		net/py-stem${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-stem${MODPY_FLAVOR}


pre-configure:
	${SUBST_CMD} ${WRKSRC}/nyx.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/nyx.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
