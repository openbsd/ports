# $OpenBSD: Makefile,v 1.1.1.1 2019/02/22 11:11:19 landry Exp $

COMMENT =		snuggs are s-expressions for numpy

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		snuggs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

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
