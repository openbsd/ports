# $OpenBSD: Makefile,v 1.1.1.1 2009/03/14 22:08:28 fgsch Exp $

COMMENT =	distributed object middleware for Python

MODPY_EGG_VERSION = 3.8.1
DISTNAME =	Pyro-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	devel

HOMEPAGE =	http://pyro.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pyro/}

MODULES =	lang/python

NO_REGRESS =	Yes

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/pyro
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/pyro
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/pyro
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/pyro

.include <bsd.port.mk>
