# $OpenBSD: Makefile,v 1.31 2011/04/29 08:41:51 ajacoutot Exp $

COMMENT=	screen saver and locker for GNOME

GNOME_PROJECT=	gnome-screensaver
GNOME_VERSION=	2.30.2
REVISION=	2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86misc
WANTLIB += Xxf86vm atk-1.0 c cairo dbus-1 dbus-glib-1 execinfo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xkbfile xklavier xml2
WANTLIB += z xcb-render gnome-desktop-2 gnome-menu
WANTLIB += gnomekbdui gnomekbd drm

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	x11/gnome/desktop \
		x11/gnome/menus \
		x11/gnome/libgnomekbd

RUN_DEPENDS=	x11/gnome/librsvg \
		x11/xscreensaver,-data,no_gle

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.67
MODGCONF2_SCHEMAS_DIR= gnome-screensaver

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-pam \
		--enable-docbook-docs \
		--enable-locking \
		--with-x \
		--with-bsdauth=yes \
		--with-xscreensaverdir="${LOCALBASE}/share/xscreensaver/config" \
		--with-xscreensaverhackdir="${LOCALBASE}/libexec/xscreensaver" \
		--with-mit-ext \
		--with-xf86gamma-ext \
		--with-kbd-layout-indicator
# doesn't work, removed upstream (be471c1097980f01f91cff6e485fb81861b5aeb7)
CONFIGURE_ARGS+=--without-libnotify

USE_GROFF =	Yes

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

MAKE_FLAGS=	GNOMELOCALEDIR="${LOCALBASE}/share/locale" \
		DOCDIR="${PREFIX}/share/doc/gnome-screensaver"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-xscreensaver

post-extract:
	cp ${FILESDIR}/gs-auth-bsdauth.c ${WRKSRC}/src/

.include <bsd.port.mk>
