# $OpenBSD: Makefile,v 1.4 2004/02/02 17:35:02 sturm Exp $

COMMENT=	"bookmarks on your palm"

DISTNAME=	palm-bookmarks-0.2
CATEGORIES=	palm textproc

HOMEPAGE=	http://www.liacs.nl/~jvhemert/scripts/palm-bookmarks/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/palm-bookmarks.cgi ${PREFIX}/bin/palm-bookmarks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palm-bookmarks
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palm-bookmarks

.include <bsd.port.mk>
