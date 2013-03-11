# $OpenBSD: Makefile,v 1.56 2013/03/11 11:46:11 espie Exp $

COMMENT=	screen saver and locker for GNOME

GNOME_PROJECT=	gnome-screensaver
GNOME_VERSION=	3.6.1

HOMEPAGE=	https://live.gnome.org/GnomeScreensaver

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86misc
WANTLIB += Xxf86vm atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnomekbd
WANTLIB += gnomekbdui gobject-2.0 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm xkbfile xklavier
WANTLIB += atk-bridge-2.0 atspi harfbuzz icudata icule icuuc
WANTLIB += xml2 z stdc++

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
LIB_DEPENDS=	x11/gnome/desktop>=3.6.0 \
		x11/gnome/libgnomekbd

RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0 \
		sysutils/consolekit # src/gs-listener-dbus.c

CONFIGURE_ARGS=	--without-systemd

MAKE_FLAGS=	DOCDIR="${PREFIX}/share/doc/gnome-screensaver"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-xscreensaver

post-extract:
	cp ${FILESDIR}/gs-auth-bsdauth.c ${WRKSRC}/src/

.include <bsd.port.mk>
