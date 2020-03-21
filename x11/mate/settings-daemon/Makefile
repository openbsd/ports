# $OpenBSD: Makefile,v 1.18 2020/03/21 16:14:57 robert Exp $

COMMENT=		MATE settings daemon

MATE_PROJECT=		mate-settings-daemon

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 dbus-1
WANTLIB += dbus-glib-1 dconf epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl ltdl lzma m mate-desktop-2 matekbd matekbdui
WANTLIB += matemixer notify nspr4 nss3 nssutil3 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 png
WANTLIB += polkit-gobject-1 pthread pulse smime3 sndfile ssl3
WANTLIB += startup-notification-1 vorbis vorbisenc vorbisfile xcb
WANTLIB += xcb-render xcb-shm xcb-util xkbfile xklavier xml2 z

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
CONFIGURE_ARGS+=	--disable-rfkill \
			--enable-pulse

.include <bsd.port.mk>
