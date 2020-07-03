# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:56 sthen Exp $

COMMENT =		matrices describing affine transformation of the plane

MODPY_EGG_VERSION =	2.3.0
DISTNAME =		affine-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
