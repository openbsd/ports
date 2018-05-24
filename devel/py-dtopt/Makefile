# $OpenBSD: Makefile,v 1.12 2018/05/24 07:42:17 jasper Exp $

COMMENT =	add options to doctest examples while they are running

MODPY_EGG_VERSION = 0.1
DISTNAME =	dtopt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	6

CATEGORIES =	devel


# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-dtopt
	${INSTALL_DATA} ${WRKSRC}/docs/index.txt \
	    ${PREFIX}/share/doc/py-dtopt

.include <bsd.port.mk>
