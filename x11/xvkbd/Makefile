# $OpenBSD: Makefile,v 1.20 2019/04/01 11:54:14 naddy Exp $

COMMENT=		virtual keyboard for X Window System

DISTNAME=		xvkbd-3.9
CATEGORIES=		x11
HOMEPAGE=		http://t-sato.in.coocan.jp/xvkbd/

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw3d Xdmcp Xext Xmu Xpm Xt Xtst c

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		x11/Xaw3d

CONFIGURE_STYLE=	imake
NO_TEST=		Yes

.include <bsd.port.mk>
