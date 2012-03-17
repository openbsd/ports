# $OpenBSD: Makefile,v 1.26 2012/03/17 15:09:45 ajacoutot Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.5
CATEGORIES=	games x11

HOMEPAGE=	http://www.xpilot.org/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xpilotgame/}

USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
