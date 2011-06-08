# $OpenBSD: Makefile,v 1.6 2011/06/08 17:39:25 jasper Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.4
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=c/coverage/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes 

NO_REGRESS =	Yes

WANTLIB +=	${MODPY_WANTLIB}

.include <bsd.port.mk>
