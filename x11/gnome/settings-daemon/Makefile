# $OpenBSD: Makefile,v 1.89 2013/01/05 12:53:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.6.3
REVISION=	2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 colord crypto cups dbus-1 dbus-glib-1
WANTLIB += drm execinfo expat ffi fontconfig freetype gdbm gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gssapi gthread-2.0 gtk-3 harfbuzz icudata
WANTLIB += icule icuuc json krb5 lcms2 ltdl m notify nspr4 nss3
WANTLIB += nssutil3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib smime3 sndfile softokn3 sqlite3
WANTLIB += ssl ssl3 stdc++ upower-glib vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm xkbfile z X11-xcb Xtst avahi-client avahi-common

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		x11/gnome/desktop>=3.6.0 \
		security/nss \
		print/cups,-libs \
		audio/pulseaudio>=2.1 \
		audio/libcanberra,-gtk3 \
		sysutils/upower \
		graphics/colord

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

# share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.policy
RUN_DEPENDS +=	sysutils/polkit

# plugins/mouse/gsd-mouse-manager.c
RUN_DEPENDS += x11/gnome/mousetweaks

# otherwise we end up without icons on minimal install
RUN_DEPENDS +=	x11/gnome/icon-theme

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=	--disable-static \
		--disable-packagekit \
		--disable-gudev \
		--disable-systemd

# XXX requires ibus >= 1.4.99
CONFIGURE_ARGS += --disable-ibus

FAKE_FLAGS=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

post-install:
	rm ${PREFIX}/lib/gnome-settings-daemon-3.0/*.la

.include <bsd.port.mk>
