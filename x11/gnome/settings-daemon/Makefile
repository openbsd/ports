# $OpenBSD: Makefile,v 1.50 2011/09/20 22:54:25 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	3.0.3

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86misc
WANTLIB += Xxf86vm asn1 atk-1.0 c cairo cairo-gobject crypto cups
WANTLIB += dbus-1 dbus-glib-1 drm execinfo expat fontconfig freetype
WANTLIB += gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnomekbd gnomekbdui gobject-2.0 gssapi
WANTLIB += gthread-2.0 gtk-3 krb5 m notify nspr4 nss3 nssutil3
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += smime3 softokn3 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += xcb xcb-aux xcb-render xcb-shm xkbfile
WANTLIB += xklavier xml2 z X11-xcb

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libnotify>=0.7.2 \
		x11/gnome/desktop \
		x11/gnome/libgnomekbd \
		sysutils/polkit \
		security/nss \
		print/cups

# otherwise we end up without icons on minimal install
RUN_DEPENDS=	x11/gnome/icon-theme

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	--disable-static \
		--disable-pulse \
		--disable-packagekit \
		--disable-gudev

FAKE_FLAGS+=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

.include <bsd.port.mk>
