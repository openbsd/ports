# $OpenBSD: Makefile,v 1.26 2022/02/26 20:48:40 sthen Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION =	6.3.2
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://coverage.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
