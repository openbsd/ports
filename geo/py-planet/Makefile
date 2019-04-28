# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:40 sthen Exp $

COMMENT =	client library and CLI for Planet's public API
#'
MODPY_EGG_VERSION =	1.2.2
DISTNAME =	planet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	geo

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# tests not bundled; test infrastructure left here for manual fetches
#NO_TEST =	Yes

MODPY_PYTEST =	Yes
RUN_DEPENDS +=	devel/py-click${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-futures${MODPY_FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-mock${MODPY_FLAVOR} \
		www/py-requests-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/planet ${PREFIX}/bin/planet${MODPY_BIN_SUFFIX}
	rm ${PREFIX}/LICENSE

.include <bsd.port.mk>
