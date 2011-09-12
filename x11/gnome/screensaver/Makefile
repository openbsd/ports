# $OpenBSD: Makefile,v 1.33 2011/09/12 12:04:17 jasper Exp $

COMMENT=	screen saver and locker for GNOME

GNOME_PROJECT=	gnome-screensaver
GNOME_VERSION=	3.0.1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86misc
WANTLIB += Xxf86vm atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += drm execinfo expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnomekbd gnomekbdui gobject-2.0 gthread-2.0 gtk-3 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xkbfile
WANTLIB += xklavier xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	textproc/xmlto \
		devel/gsettings-desktop-schemas \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	x11/gnome/desktop \
		x11/gnome/libgnomekbd

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		sysutils/consolekit # src/gs-listener-dbus.c

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--enable-docbook-docs \
		--enable-locking \
		--with-x \
		--with-mit-ext \
		--with-xf86gamma-ext

# configure switch is still here, but functionnality has been removed
# --with-kbd-layout-indicator

USE_GROFF=	Yes

MAKE_FLAGS=	DOCDIR="${PREFIX}/share/doc/gnome-screensaver"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-xscreensaver

post-extract:
	cp ${FILESDIR}/gs-auth-bsdauth.c ${WRKSRC}/src/

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
