# $OpenBSD: Makefile,v 1.5 2019/07/12 21:02:27 sthen Exp $

COMMENT=	bookmarks on your palm

DISTNAME=	palm-bookmarks-0.2
REVISION=	3
CATEGORIES=	textproc

HOMEPAGE=	http://www.vanhemert.co.uk/palmbookmarks.html

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.vanhemert.co.uk/files/
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/palm-bookmarks.cgi ${PREFIX}/bin/palm-bookmarks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palm-bookmarks
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palm-bookmarks

.include <bsd.port.mk>
