# $OpenBSD: Makefile,v 1.66 2011/11/11 09:32:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.2.2
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
WANTLIB += freetype gconf-2 gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gnomekbd gnomekbdui
WANTLIB += gobject-2.0 gssapi gthread-2.0 gtk-3 json krb5 lcms2
WANTLIB += ltdl m notify nspr4 nss3 nssutil3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib smime3
WANTLIB += sndfile softokn3 sqlite3 ssl ssl3 stdc++ upower-glib
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xkbfile xklavier
WANTLIB += xml2 z

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
		sysutils/upower \
		graphics/colord

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
