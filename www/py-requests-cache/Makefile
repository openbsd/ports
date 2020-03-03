# $OpenBSD: Makefile,v 1.1.1.1 2020/03/03 21:40:13 tb Exp $

COMMENT =		transparent persistent cache for the py-requests library
MODPY_EGG_VERSION =	0.5.2
DISTNAME =		requests-cache-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		https://github.com/reclosedev/requests-cache
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# tests require network
MODPY_PYTEST =		Yes

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}>=1.1.0

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
