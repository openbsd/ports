# $OpenBSD: Makefile,v 1.17 2015/02/16 22:57:14 naddy Exp $

COMMENT=	displays text on your screen

DISTNAME=	xosd-2.2.14
SHARED_LIBS+=	xosd		4.12	# 4.14
CATEGORIES=	x11 graphics
HOMEPAGE=	http://libxosd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xinerama c pthread pthread-stubs
WANTLIB += xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libxosd/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-new-plugin \
			--disable-old-plugin \
			--disable-gtktest \
			--disable-gdk_pixbuftest \
			--disable-beep_media_player_plugin

.include <bsd.port.mk>
