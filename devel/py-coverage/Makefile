# $OpenBSD: Makefile,v 1.14 2015/04/02 14:21:14 jasper Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.7.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

.include <bsd.port.mk>
