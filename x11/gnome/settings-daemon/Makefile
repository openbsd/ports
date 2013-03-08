# $OpenBSD: Makefile,v 1.92 2013/03/08 07:01:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.6.4
REVISION=	1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst asn1 atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 colord colordprivate
WANTLIB += crypto cups dbus-1 dbus-glib-1 execinfo expat ffi fontconfig
WANTLIB += freetype gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-3 harfbuzz ibus-1.0 icudata icule icuuc json krb5
WANTLIB += lcms2 ltdl m notify nspr4 nss3 nssutil3 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs pulse pulse-mainloop-glib
WANTLIB += smime3 sndfile softokn3 sqlite3 ssl ssl3 upower-glib
WANTLIB += vorbis vorbisenc vorbisfile xcb xcb-render xcb-shm
WANTLIB += xkbfile z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		x11/gnome/desktop>=3.6.0 \
		security/nss \
		print/cups,-libs \
		audio/pulseaudio>=2.1 \
		audio/libcanberra,-gtk3 \
		sysutils/upower \
		graphics/colord \
		inputmethods/ibus>=1.5.1

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

FAKE_FLAGS=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas
	rm ${PREFIX}/lib/gnome-settings-daemon-3.0/*.la

.include <bsd.port.mk>
