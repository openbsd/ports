# $OpenBSD: Makefile,v 1.10 2012/10/05 06:43:02 jasper Exp $

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.2.2
API=		0.2

SHARED_LIBS +=  grilo-0.2            0.0      # 1.2
SHARED_LIBS +=  grlnet-0.2           0.0      # 0.2

CATEGORIES+=	multimedia

HOMEPAGE=	http://live.gnome.org/Grilo

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

LIB_DEPENDS=	devel/libsoup \
		x11/gtk+3

MODGNOME_TOOLS= goi vala

SUBST_VARS+=	API

.include <bsd.port.mk>
