# $OpenBSD: Makefile,v 1.3 2010/08/30 22:24:15 jasper Exp $

COMMENT =	simplify usage of decorators	

MODPY_EGG_VERSION = 3.1.2
DISTNAME =	decorator-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-decorator
	${INSTALL_DATA} ${WRKSRC}/documentation.html \
	    ${PREFIX}/share/doc/py-decorator

.include <bsd.port.mk>
