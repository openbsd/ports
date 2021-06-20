# $OpenBSD: Makefile,v 1.1.1.1 2021/06/20 10:45:16 sthen Exp $

COMMENT =	parser for Coffeescript Object Notation (CSON)

MODPY_EGG_VERSION =	0.8

DISTNAME =	cson-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/avakar/pycson

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-speg${MODPY_FLAVOR}

# test files not included in pypi distribution
NO_TEST =	Yes

.include <bsd.port.mk>
