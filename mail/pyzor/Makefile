# $OpenBSD: Makefile,v 1.17 2021/10/29 21:50:29 sthen Exp $

COMMENT =		collaborative, networked system to detect and block spam

GH_ACCOUNT =		SpamExperts
GH_PROJECT =		pyzor
GH_COMMIT =		53aceee8943c30cc28850ca76e19a54689e3d119

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		pyzor-1.1.1pre20210613
CATEGORIES =		mail net

HOMEPAGE =		https://www.pyzor.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
# actual releases should be available on pypi, could switch back if
# there's a new release, but no tests
#MODPY_PI =		Yes

MODPY_PYTEST =		Yes
# default includes functional tests, which require network and configuration
MODPY_PYTEST_ARGS =	tests/unit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyzor
	${INSTALL_DATA} ${WRKSRC}/config/* ${PREFIX}/share/examples/pyzor/

.include <bsd.port.mk>
