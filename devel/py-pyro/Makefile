# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:26 espie Exp $

COMMENT =	distributed object middleware for Python

MODPY_EGG_VERSION = 3.14
DISTNAME =	Pyro-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION=		0

CATEGORIES =	devel

HOMEPAGE =	http://irmen.home.xs4all.nl/pyro3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=P/Pyro/}

MODULES =	lang/python

NO_TEST =	Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/py-pyro
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-pyro
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-pyro
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyro

.include <bsd.port.mk>
