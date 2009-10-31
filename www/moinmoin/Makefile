# $OpenBSD: Makefile,v 1.16 2009/10/31 14:26:39 fgsch Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.8.5
DISTNAME =	moin-${MODPY_EGG_VERSION}
PKGNAME =	moin${DISTNAME}

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

post-configure:
	@cd ${WRKSRC}/wiki/server && \
	    perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
	    moin moin.cgi moin.fcg mointwisted test.wsgi wikiserver.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	    README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
