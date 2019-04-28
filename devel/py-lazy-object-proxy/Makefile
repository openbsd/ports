# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:34 sthen Exp $

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore=src

TEST_DEPENDS =		devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
