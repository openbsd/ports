# $OpenBSD: Makefile,v 1.13 2014/05/01 13:05:29 benoit Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.7.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MASTER_SITES =	${MASTER_SITE_PYPI:=c/coverage/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

.include <bsd.port.mk>
