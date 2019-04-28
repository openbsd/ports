# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:42 sthen Exp $

COMMENT =		snuggs are s-expressions for numpy

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		snuggs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
