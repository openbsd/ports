# $OpenBSD: Makefile,v 1.10 2002/03/07 17:38:53 fgsch Exp $

COMMENT=	X11 Go Toolset

DISTNAME=	cgoban-1.9.12
CATEGORIES=	games x11
NEED_VERSION=	1.405
MASTER_SITES=	http://www.igoweb.org/~wms/comp/cgoban/

HOMEPAGE=	${MASTER_SITES}

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgoban ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man6/cgoban.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
