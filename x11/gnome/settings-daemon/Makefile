# $OpenBSD: Makefile,v 1.42 2011/04/28 13:10:57 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	2.32.1

REVISION=	2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86misc
WANTLIB += Xxf86vm atk-1.0 c cairo dbus-1 dbus-glib-1 drm execinfo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-2 gnomekbd
WANTLIB += gnomekbdui gobject-2.0 gthread-2.0 gtk-x11-2.0 m notify
WANTLIB += nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs smime3 softokn3 sqlite3 ssl3 startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xcb-render xcb-shm xkbfile
WANTLIB += xklavier xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	textproc/rarian
LIB_DEPENDS=	devel/libnotify>=0.7.2 \
		x11/gnome/desktop \
		x11/gnome/libgnomekbd \
		sysutils/polkit

# otherwise we end up without icons on minimal install
RUN_DEPENDS=	x11/gnome/icon-theme

DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= control-center2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIUGRE_SHARED} \
		--disable-pulse

FAKE_FLAGS+=	desktopdir=${PREFIX}/share/examples/gnome-settings-daemon/xdg/autostart \
		sysconfdir=${PREFIX}/share/examples/gnome-settings-daemon \
		DBUS_SYS_DIR=${PREFIX}/share/examples/gnome-settings-daemon/dbus-1/system.d

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-settings-daemon/gnome-settings-module.c

.include <bsd.port.mk>
