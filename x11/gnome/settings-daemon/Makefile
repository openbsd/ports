# $OpenBSD: Makefile,v 1.62 2011/10/17 14:52:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.2.1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor json
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm asn1 atk-1.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 crypto cups dbus-1 dbus-glib-1
WANTLIB += drm execinfo expat ffi fontconfig freetype gconf-2
WANTLIB += gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnomekbd gnomekbdui gobject-2.0 gssapi
WANTLIB += gthread-2.0 gtk-3 krb5 ltdl m notify nspr4 nss3
WANTLIB += nssutil3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs pulse pulse-mainloop-glib smime3 sndfile
WANTLIB += softokn3 sqlite3 ssl ssl3 vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm xkbfile xklavier xml2 z upower-glib

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify>=0.7.2 \
		x11/gnome/desktop \
		x11/gnome/libgnomekbd \
		sysutils/polkit \
		security/nss \
		print/cups \
		audio/pulseaudio \
		audio/libcanberra,-gtk3 \
		sysutils/upower

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

# otherwise we end up without icons on minimal install
RUN_DEPENDS+=	x11/gnome/icon-theme

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
CONFIGURE_ARGS=	--disable-static \
		--disable-packagekit \
		--disable-gudev \
		--with-pnpids=${LOCALBASE}/share/libgnome-desktop-3.0/pnp.ids

FAKE_FLAGS+=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

.include <bsd.port.mk>
