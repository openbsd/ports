# $OpenBSD: Makefile,v 1.20 2008/01/23 16:07:01 naddy Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.4
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11

HOMEPAGE=	http://www.xpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

MASTER_SITES=	ftp://ftp.xpilot.org/pub/xpilot/ \
		ftp://ftp.xpilot.org/pub/xpilot/old \
		${MASTER_SITE_XCONTRIB:=games/multiplayer/}

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
