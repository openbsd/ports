# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:45 espie Exp $

COMMENT=	bookmarks on your palm

DISTNAME=	palm-bookmarks-0.2
REVISION=	1
CATEGORIES=	textproc

HOMEPAGE=	http://www.vanhemert.co.uk/palmbookmarks.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
