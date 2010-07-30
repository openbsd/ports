# $OpenBSD: Makefile,v 1.18 2010/07/30 06:58:57 ajacoutot Exp $

COMMENT=	round, analog X11 clock with bezier curve hands

DISTNAME=	bclock-1.0
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/clocks/}

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

USE_X11=	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
