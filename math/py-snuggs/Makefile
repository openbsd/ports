# $OpenBSD: Makefile,v 1.7 2020/08/10 07:44:07 bket Exp $

COMMENT =		snuggs are s-expressions for numpy

MODPY_EGG_VERSION =	1.4.7
DISTNAME =		snuggs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=		python3

.include <bsd.port.mk>
