# $OpenBSD: Makefile,v 1.16 2011/01/18 21:34:58 ajacoutot Exp $

COMMENT=	Thunar media tags plugin

XFCE_VERSION=	0.1.2
THUNAR_PLUGIN=	thunar-media-tags-plugin
REVISION=	12

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/xfce4

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png stdc++ z pthread-stubs xcb \
		thunarx-2 tag tag_c xcb-render GL Xxf86vm drm xcb-shm

LIB_DEPENDS=	x11/xfce4/thunar \
		audio/taglib

.include <bsd.port.mk>
