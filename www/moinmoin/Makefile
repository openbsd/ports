# $OpenBSD: Makefile,v 1.17 2010/04/18 20:39:49 fgsch Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.9.2
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

post-configure:
	@cd ${WRKSRC}/wiki/server && perl -pi -e \
	    's,/usr/bin/env python|/usr/bin/python,${MODPY_BIN},g' \
	    moin moin.ajp moin.cgi moin.fcgi moin.scgi moin.wsgi test.wsgi \
	    wikiserverconfig.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	    README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
