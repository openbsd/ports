# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:25 robert Exp $

COMMENT=		MATE session manager

MATE_PROJECT=		mate-session-manager

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z execinfo dbus-glib-1

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		devel/libexecinfo \
			x11/dbus-glib
RUN_DEPENDS=		x11/gnome/keyring \
			x11/mate/marco \
			x11/mate/settings-daemon \
			x11/mate/themes \
			sysutils/consolekit

.include <bsd.port.mk>
