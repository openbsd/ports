# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:29 sthen Exp $

COMMENT=	displays text on your screen

DISTNAME=	xosd-2.2.14
SHARED_LIBS+=	xosd		4.12	# 4.14
CATEGORIES=	x11 graphics
HOMEPAGE=	http://libxosd.sourceforge.net/
REVISION=	1

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xinerama c pthread
WANTLIB += xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libxosd/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-new-plugin \
			--disable-old-plugin \
			--disable-gtktest \
			--disable-gdk_pixbuftest \
			--disable-beep_media_player_plugin

.include <bsd.port.mk>
