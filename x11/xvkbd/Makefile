# $OpenBSD: Makefile,v 1.6 2006/09/18 10:52:10 espie Exp $

COMMENT=		"virtual keyboard for X Window System"

DISTNAME=		xvkbd-2.7a
CATEGORIES=		x11
HOMEPAGE=		http://homepage3.nifty.com/tsato/xvkbd/

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xp Xpm Xt Xtst c 

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		Xaw3d.>=6::x11/Xaw3d

USE_X11=		Yes
CONFIGURE_STYLE=	imake
NO_REGRESS=		Yes

.include <bsd.port.mk>
