# $OpenBSD: Makefile,v 1.6 2000/02/12 06:29:53 turan Exp $

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	xneko.tar

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_X11=	yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
