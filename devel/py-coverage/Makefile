# $OpenBSD: Makefile,v 1.5 2011/05/31 05:44:26 rpointel Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.4
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
