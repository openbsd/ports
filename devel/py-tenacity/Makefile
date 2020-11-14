# $OpenBSD: Makefile,v 1.1.1.1 2020/11/14 18:21:53 sthen Exp $

COMMENT =		Python module to retry code until it succeeds

MODPY_EGG_VERSION =	6.2.0
DISTNAME =		tenacity-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

MAINTAINER =		Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jd/tenacity

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

# depends on typeguard, currently no in ports
TEST_DEPENDS =		www/py-tornado${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
