# $OpenBSD: Makefile,v 1.28 2013/03/11 11:44:43 espie Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.9.6
DISTNAME =	moin-${MODPY_EGG_VERSION}
PKGNAME =	moin${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	http://moinmo.in/

# GPLv2 and several other ones claiming compliance with GPLv2 or
# actually being less restrictive.
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://static.moinmo.in/files/

MODULES =	lang/python

MODPY_VERSION =	2.7

NO_TEST =	Yes

post-configure:
	@cd ${WRKSRC}/wiki/server && perl -pi -e \
	    's,/usr/bin/env python|/usr/bin/python,${MODPY_BIN},g' \
	    moin moin.ajp moin.cgi moin.fcgi moin.scgi test.wsgi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	    README.migration UPDATE.html ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
