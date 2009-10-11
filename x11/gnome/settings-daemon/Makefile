# $OpenBSD: Makefile,v 1.23 2009/10/11 22:53:22 ajacoutot Exp $

COMMENT=	GNOME settings daemon

GNOME_PROJECT=	gnome-settings-daemon
GNOME_VERSION=	2.28.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86misc atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-atom xcb-aux xcb-event xkbfile xklavier xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian
LIB_DEPENDS=	notify::devel/libnotify \
		gnome-desktop-2.>=6::x11/gnome/desktop \
		gnomekbd::x11/gnome/libgnomekbd
RUN_DEPENDS=	::x11/gnome/icon-theme

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= control-center2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIUGRE_SHARED} \
		--disable-alsa \
		--disable-esd \
		--disable-pulse

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-settings-daemon/gnome-settings-module.c

.include <bsd.port.mk>
