# $OpenBSD: Makefile,v 1.11 2008/05/09 22:15:30 fgsch Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.6.3
DISTNAME =	moin-${MODPY_EGG_VERSION}
PKGNAME =	moin${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	http://moinmo.in/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://static.moinmo.in/files/

MODULES =	lang/python
RUN_DEPENDS =	${MODPY_EXPAT_DEPENDS}

NO_REGRESS =	Yes

PKG_ARCH =	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	  README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
