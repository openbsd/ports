# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:46 sthen Exp $

COMMENT =		matrices describing affine transformation of the plane

MODPY_EGG_VERSION =	2.2.2
DISTNAME =		affine-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
