# $OpenBSD: Makefile,v 1.27 2013/03/11 11:07:42 espie Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.5
CATEGORIES=	games x11

HOMEPAGE=	http://www.xpilot.org/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpilotgame/}

USE_GROFF =	Yes
NO_TEST=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
