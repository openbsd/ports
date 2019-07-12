# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:08 sthen Exp $

COMMENT=	round, analog X11 clock with bezier curve hands

DISTNAME=	bclock-1.0
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/clocks/}

# X11
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
