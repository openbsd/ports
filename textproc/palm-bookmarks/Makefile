# $OpenBSD: Makefile,v 1.3 2015/10/13 06:29:38 bentley Exp $

COMMENT=	bookmarks on your palm

DISTNAME=	palm-bookmarks-0.2
REVISION=	2
CATEGORIES=	textproc

HOMEPAGE=	http://www.vanhemert.co.uk/palmbookmarks.html

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.vanhemert.co.uk/files/
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/palm-bookmarks.cgi ${PREFIX}/bin/palm-bookmarks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palm-bookmarks
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palm-bookmarks

.include <bsd.port.mk>
