# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:40 sthen Exp $

COMMENT =		classes without boilerplate

MODPY_EGG_VERSION =	19.3.0

DISTNAME =		attrs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://www.attrs.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-zopeinterface${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib

.include <bsd.port.mk>
