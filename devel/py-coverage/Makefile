# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:25 espie Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.5.3
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
