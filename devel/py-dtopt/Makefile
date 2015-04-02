# $OpenBSD: Makefile,v 1.8 2015/04/02 14:21:14 jasper Exp $

COMMENT =	add options to doctest examples while they are running

MODPY_EGG_VERSION = 0.1
DISTNAME =	dtopt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	http://pypi.python.org/pypi/dtopt/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-dtopt
	${INSTALL_DATA} ${WRKSRC}/docs/index.txt \
	    ${PREFIX}/share/doc/py-dtopt

.include <bsd.port.mk>
