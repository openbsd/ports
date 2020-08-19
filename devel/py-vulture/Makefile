# $OpenBSD: Makefile,v 1.3 2020/08/19 12:25:12 ajacoutot Exp $

COMMENT =	finds unused code in Python programs

MODPY_EGG_VERSION =	1.5

DISTNAME =	vulture-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/jendrikseipp/vulture

MAINTAINER =	Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

TEST_DEPENDS =  devel/py-test${MODPY_FLAVOR} \
                devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
