# $OpenBSD: Makefile,v 1.94 2013/03/29 14:17:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.8.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst asn1 atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 colord colordprivate
WANTLIB += crypto cups dbus-1 dbus-glib-1 execinfo expat ffi fontconfig
WANTLIB += freetype gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 graphite2 gssapi
WANTLIB += gthread-2.0 gtk-3 harfbuzz ibus-1.0 icudata icule icuuc
WANTLIB += json krb5 lcms2 ltdl m notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib sndfile ssl upower-glib vorbis
WANTLIB += vorbisenc vorbisfile xcb xcb-render xcb-shm xkbfile
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		x11/gnome/desktop \
		print/cups,-libs \
		audio/pulseaudio \
		audio/libcanberra,-gtk3 \
		sysutils/upower \
		graphics/colord \
		inputmethods/ibus

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

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
		--disable-gudev

FAKE_FLAGS=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas
	rm ${PREFIX}/lib/gnome-settings-daemon-3.0/*.la

.include <bsd.port.mk>
