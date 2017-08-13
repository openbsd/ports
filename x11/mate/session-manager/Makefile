# $OpenBSD: Makefile,v 1.5 2017/08/13 09:57:06 robert Exp $

COMMENT=		MATE session manager

MATE_PROJECT=		mate-session-manager
MATE_VERSION=		1.18.1

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 epoxy
WANTLIB += execinfo expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

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
