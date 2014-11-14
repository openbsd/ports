# $OpenBSD: Makefile,v 1.12 2014/11/14 13:56:43 benoit Exp $

COMMENT =	distributed object middleware for Python

MODPY_EGG_VERSION = 3.16
DISTNAME =	Pyro-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	devel

HOMEPAGE =	http://irmen.home.xs4all.nl/pyro3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=P/Pyro/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/py-pyro
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-pyro
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-pyro
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyro

.include <bsd.port.mk>
