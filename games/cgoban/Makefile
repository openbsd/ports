# $OpenBSD: Makefile,v 1.13 2002/10/26 20:44:38 naddy Exp $

COMMENT=	"X11 Go Toolset"

DISTNAME=	cgoban-1.9.12
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.igoweb.org/~wms/comp/cgoban/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
