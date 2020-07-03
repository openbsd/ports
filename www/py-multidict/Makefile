# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:19 sthen Exp $

COMMENT =		multidict implementation

MODPY_EGG_VERSION =	4.7.5
DISTNAME =		multidict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www devel
REVISION =		0

WANTLIB +=		pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
