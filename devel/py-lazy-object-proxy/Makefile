# $OpenBSD: Makefile,v 1.9 2020/12/30 08:44:38 daniel Exp $

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.4.3
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

WANTLIB += pthread ${MODPY_WANTLIB}
# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore=src

TEST_DEPENDS =		devel/py-test-benchmark${MODPY_FLAVOR}

.include <bsd.port.mk>
