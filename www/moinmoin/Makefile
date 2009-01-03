# $OpenBSD: Makefile,v 1.12 2009/01/03 21:27:25 kili Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.6.3
DISTNAME =	moin-${MODPY_EGG_VERSION}
PKGNAME =	moin${DISTNAME}p0

CATEGORIES =	www

HOMEPAGE =	http://moinmo.in/

# GPLv2 and several other ones claiming compliance with GPLv2 or
# actually being less restrictive.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://static.moinmo.in/files/

MODULES =	lang/python

NO_REGRESS =	Yes

PKG_ARCH =	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	  README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
