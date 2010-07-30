# $OpenBSD: Makefile,v 1.11 2010/07/30 06:59:02 ajacoutot Exp $

COMMENT=		virtual keyboard for X Window System

DISTNAME=		xvkbd-2.8
REVISION=		2
CATEGORIES=		x11
HOMEPAGE=		http://homepage3.nifty.com/tsato/xvkbd/

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt Xtst c Xaw3d

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		::x11/Xaw3d

USE_X11=		Yes
CONFIGURE_STYLE=	imake
NO_REGRESS=		Yes

.include <bsd.port.mk>
