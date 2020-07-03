# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:46 sthen Exp $

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

WANTLIB += pthread ${MODPY_WANTLIB}
# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore=src

TEST_DEPENDS =		devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
