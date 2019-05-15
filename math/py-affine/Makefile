# $OpenBSD: Makefile,v 1.3 2019/05/15 12:04:39 kmos Exp $

COMMENT =		matrices describing affine transformation of the plane

MODPY_EGG_VERSION =	2.2.2
DISTNAME =		affine-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
