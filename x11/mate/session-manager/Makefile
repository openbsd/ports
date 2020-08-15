# $OpenBSD: Makefile,v 1.20 2020/08/15 06:34:14 robert Exp $

COMMENT=		MATE session manager

MATE_PROJECT=		mate-session-manager
MATE_VERSION=		1.24.1

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy execinfo expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-3
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z
WANTLIB += EGL GL GLESv2 X11-xcb Xxf86vm drm gbm glapi xcb-dri2
WANTLIB += xcb-dri3 xcb-glx xcb-present xcb-sync xcb-xfixes xshmfence

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=		textproc/xmlto

LIB_DEPENDS=		devel/libexecinfo \
			x11/dbus-glib \
			x11/gtk+3

RUN_DEPENDS=		x11/gnome/keyring \
			x11/mate/marco \
			x11/mate/settings-daemon \
			x11/mate/themes \
			sysutils/consolekit

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
