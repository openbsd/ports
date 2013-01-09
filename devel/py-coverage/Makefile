# $OpenBSD: Makefile,v 1.10 2013/01/09 12:22:30 benoit Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.5.3
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MASTER_SITES =	${MASTER_SITE_PYPI:=c/coverage/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_REGRESS =	Yes

.include <bsd.port.mk>
