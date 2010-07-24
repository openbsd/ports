# $OpenBSD: Makefile,v 1.7 2010/07/24 17:38:35 ajacoutot Exp $

COMMENT=	bookmarks on your palm

DISTNAME=	palm-bookmarks-0.2
REVISION=	0
CATEGORIES=	palm textproc

HOMEPAGE=	http://www.vanhemert.co.uk/palmbookmarks.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.vanhemert.co.uk/files/
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/palm-bookmarks.cgi ${PREFIX}/bin/palm-bookmarks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palm-bookmarks
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palm-bookmarks

.include <bsd.port.mk>
