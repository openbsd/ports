# $OpenBSD: Makefile,v 1.12 2022/02/28 15:12:52 sthen Exp $

COMMENT =		multidict implementation

MODPY_EGG_VERSION =	6.0.2
DISTNAME =		multidict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www devel

WANTLIB +=		pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
