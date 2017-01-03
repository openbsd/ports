# $OpenBSD: Makefile,v 1.18 2017/01/03 19:19:48 landry Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION =	4.2
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
