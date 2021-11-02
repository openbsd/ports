# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:39 sthen Exp $

COMMENT =		terminal status monitor for Tor

MODPY_EGG_VERSION =	2.1.0
DISTNAME =		nyx-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		https://nyx.torproject.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

BUILD_DEPENDS =		net/py-stem${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-stem${MODPY_FLAVOR}


pre-configure:
	${SUBST_CMD} ${WRKSRC}/nyx.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/nyx.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
