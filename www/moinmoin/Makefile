# $OpenBSD: Makefile,v 1.37 2021/02/23 19:39:47 sthen Exp $

COMMENT =	wiki engine written in python

MODPY_EGG_VERSION = 1.9.10
DISTNAME =	moin-${MODPY_EGG_VERSION}
PKGNAME =	moin${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	https://moinmo.in/

# GPLv2 and several other ones claiming compliance with GPLv2 or
# actually being less restrictive.
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://static.moinmo.in/files/

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST =	Yes

pre-configure:
	@cd ${WRKSRC}/wiki/server && ${MODPY_BIN_ADJ} \
	    moin moin.ajp moin.cgi moin.fcgi moin.scgi test.wsgi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	find ${PREFIX}/share/moin -type f -exec chmod 0644 {} +
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	    README.migration UPDATE.html ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
