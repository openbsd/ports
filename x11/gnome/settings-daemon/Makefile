# $OpenBSD: Makefile,v 1.35 2010/10/11 08:19:20 jasper Exp $

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	2.32.0
REVISION=	0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86misc atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-atom xcb-aux xcb-event xkbfile xklavier xml2 z
WANTLIB += xcb-render xcb-render-util notify gnome-desktop-2
WANTLIB += gnomekbd gnomekbdui ssl3 polkit-gobject-1 sqlite3
WANTLIB += eggdbus-1 nspr4 nss3 nssutil3 plc4 plds4 smime3 softokn3

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian
LIB_DEPENDS=	::devel/libnotify \
		::x11/gnome/desktop \
		::x11/gnome/libgnomekbd \
		::sysutils/polkit

# otherwise we end up without icons on minimal install
RUN_DEPENDS=	::x11/gnome/icon-theme

USE_X11=	Yes
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
