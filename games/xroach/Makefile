# $OpenBSD: Makefile,v 1.6 1999/11/03 01:02:18 turan Exp $

BROKEN=		sources moved

DISTNAME=	xroach
PKGNAME=	xroach-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar

MAINTAINER=	mickey@openbsd.org

USE_X11=	yes

post-extract:
	@${RM} -f ${WRKSRC}/obj

.include <bsd.port.mk>
