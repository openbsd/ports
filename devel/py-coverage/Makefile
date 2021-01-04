# $OpenBSD: Makefile,v 1.23 2021/01/04 14:06:29 sthen Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION =	4.5.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
