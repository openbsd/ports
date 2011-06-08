# $OpenBSD: Makefile,v 1.8 2011/06/08 17:39:25 jasper Exp $

COMMENT =	distributed object middleware for Python

MODPY_EGG_VERSION = 3.11
DISTNAME =	Pyro-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =		0

CATEGORIES =	devel

HOMEPAGE =	http://www.xs4all.nl/~irmen/pyro3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/download/

MODULES =	lang/python

NO_REGRESS =	Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/py-pyro
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/py-pyro
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-pyro
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyro

.include <bsd.port.mk>
