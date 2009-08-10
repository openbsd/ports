# $OpenBSD: Makefile,v 1.21 2009/08/10 06:31:43 kili Exp $

COMMENT=	multiplayer 2d space battles game

DISTNAME=	xpilot-4.5.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games x11

HOMEPAGE=	http://www.xpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

MASTER_SITES=	ftp://ftp.xpilot.org/pub/xpilot/ \
		ftp://ftp.xpilot.org/pub/xpilot/old \
		${MASTER_SITE_XCONTRIB:=games/multiplayer/}

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
