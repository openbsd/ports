# $OpenBSD: Makefile,v 1.31 2019/07/12 21:02:21 sthen Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.5
CATEGORIES=	games x11
REVISION=	1

HOMEPAGE=	http://www.xpilot.org/
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpilotgame/}

NO_TEST=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
