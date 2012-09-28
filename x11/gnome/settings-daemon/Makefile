# $OpenBSD: Makefile,v 1.80 2012/09/28 08:28:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.6.0
REVISION=	0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 colord crypto
WANTLIB += cups dbus-1 dbus-glib-1 drm execinfo expat ffi fontconfig
WANTLIB += freetype gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnomekbd gnomekbdui gobject-2.0
WANTLIB += gssapi gthread-2.0 gtk-3 json krb5 lcms2 ltdl m notify
WANTLIB += nspr4 nss3 nssutil3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib smime3 sndfile softokn3 sqlite3
WANTLIB += ssl ssl3 stdc++ upower-glib vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm xkbfile xklavier xml2 z icuuc
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify \
		x11/gnome/desktop>=3.6.0 \
		x11/gnome/libgnomekbd>=3.6.0 \
		security/nss \
		print/cups,-libs \
		audio/pulseaudio \
		audio/libcanberra,-gtk3 \
		sysutils/upower \
		graphics/colord

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0

# share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.policy
RUN_DEPENDS +=	sysutils/polkit

# otherwise we end up without icons on minimal install
RUN_DEPENDS +=	x11/gnome/icon-theme

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${LOCALBASE}/lib/pulseaudio

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
