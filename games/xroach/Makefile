# $OpenBSD: Makefile,v 1.8 2000/03/17 00:26:37 turan Exp $

DISTNAME=	xroach
PKGNAME=	xroach-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	xroach.tar

MAINTAINER=	mickey@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
