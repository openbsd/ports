# $OpenBSD: Makefile,v 1.30 2019/05/07 17:04:58 danj Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.5
CATEGORIES=	games x11
REVISION=	1

HOMEPAGE=	http://www.xpilot.org/
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpilotgame/}

NO_TEST=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
