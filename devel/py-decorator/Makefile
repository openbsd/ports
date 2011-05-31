# $OpenBSD: Makefile,v 1.5 2011/05/31 09:26:39 jasper Exp $

COMMENT =	simplify usage of decorators	

MODPY_EGG_VERSION = 3.3.1
DISTNAME =	decorator-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://pypi.python.org/pypi/decorator

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=d/decorator/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes 

NO_REGRESS =	Yes

.include <bsd.port.mk>
