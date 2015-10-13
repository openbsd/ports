# $OpenBSD: Makefile,v 1.29 2015/10/13 06:29:38 bentley Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.5
CATEGORIES=	games x11
REVISION=	0

HOMEPAGE=	http://www.xpilot.org/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpilotgame/}

NO_TEST=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
