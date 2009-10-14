# $OpenBSD: Makefile,v 1.14 2009/10/14 09:55:24 ajacoutot Exp $

COMMENT=	screen saver and locker for GNOME

GNOME_PROJECT=	gnome-screensaver
GNOME_VERSION=	2.28.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86misc
WANTLIB += Xxf86vm atk-1.0 c cairo dbus-1 dbus-glib-1 execinfo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xkbfile xklavier xml2
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/xmlto
LIB_DEPENDS=	gnome-desktop-2.>=6::x11/gnome/desktop \
		gnome-menu.>=4::x11/gnome/menus \
		gnomekbdui.>=3,gnomekbd::x11/gnome/libgnomekbd \
		notify.>=2::devel/libnotify

# notification-daemon is needed for the "Leave Message" button
RUN_DEPENDS=	::x11/gnome/librsvg \
		:xscreensaver-data-*:x11/xscreensaver,-data,no_gle \
		:notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.62
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
		--with-gdm-config="${SYSCONFDIR}/X11/gdm/custom.conf" \
		--with-mit-ext \
		--with-xf86gamma-ext \
		--with-libgl \
		--with-kbd-layout-indicator \
		--with-libnotify

USE_X11=	Yes
MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

MAKE_FLAGS=	GNOMELOCALEDIR="${LOCALBASE}/share/locale" \
		DOCDIR="${PREFIX}/share/doc/gnome-screensaver"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-xscreensaver

post-extract:
	cp ${FILESDIR}/gs-auth-bsdauth.c ${WRKSRC}/src/

.include <bsd.port.mk>
