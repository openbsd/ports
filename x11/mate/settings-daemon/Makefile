# $OpenBSD: Makefile,v 1.7 2018/02/10 15:07:17 robert Exp $

COMMENT=		MATE settings daemon

MATE_PROJECT=		mate-settings-daemon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst Xxf86misc c dconf epoxy expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl lzma
WANTLIB += m pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xkbfile xml2 z
WANTLIB += smime3 ssl3
WANTLIB += nspr4 nss3 nssutil3 plc4 plds4
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo canberra-gtk3
WANTLIB += canberra dbus-1 dbus-glib-1 gdk-3 graphite2 gtk-3 harfbuzz ltdl
WANTLIB += mate-desktop-2 matekbd matekbdui matemixer notify ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 polkit-gobject-1 vorbis vorbisfile xklavier
WANTLIB += X11-xcb startup-notification-1 xcb-util

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			security/nss \
			sysutils/polkit \
			x11/dbus-glib \
			x11/mate/desktop \
			x11/mate/libmatekbd \
			x11/mate/libmatemixer

RUN_DEPENDS=		sysutils/consolekit

FAKE_FLAGS=		desktopdir=${PREFIX}/share/examples/mate-settings-daemon/xdg/autostart \
			sysconfdir=${PREFIX}/share/examples/mate-settings-daemon \
			DBUS_SYS_DIR=${PREFIX}/share/examples/mate-settings-daemon/dbus-1/system.d

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
