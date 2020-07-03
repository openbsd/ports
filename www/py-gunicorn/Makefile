# $OpenBSD: Makefile,v 1.25 2020/07/03 21:13:19 sthen Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	20.0.4
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		0

HOMEPAGE =		https://gunicorn.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		www/py-multidict${MODPY_FLAVOR}

RUN_DEPENDS +=		www/py-aiohttp

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
