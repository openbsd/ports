# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:08 espie Exp $

COMMENT=	round, analog X11 clock with bezier curve hands

DISTNAME=	bclock-1.0
REVISION=	2
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/clocks/}

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
