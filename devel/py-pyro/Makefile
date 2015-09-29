# $OpenBSD: Makefile,v 1.14 2015/09/29 10:52:11 sthen Exp $

COMMENT =	distributed object middleware for Python

MODPY_EGG_VERSION = 3.16
DISTNAME =	Pyro-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	http://irmen.home.xs4all.nl/pyro3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/py-pyro
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-pyro
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-pyro
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyro

.include <bsd.port.mk>
