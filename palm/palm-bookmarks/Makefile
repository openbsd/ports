# $OpenBSD: Makefile,v 1.2 2002/01/25 08:17:34 pvalchev Exp $

COMMENT=	"bookmarks on your palm"

DISTNAME=	palm-bookmarks-0.2
CATEGORIES=	palm textproc
NEED_VERSION=	1.504

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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/palm-bookmarks.cgi ${PREFIX}/bin/palm-bookmarks
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palm-bookmarks
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palm-bookmarks

.include <bsd.port.mk>
