# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:28 robert Exp $

COMMENT=		MATE screensaver

MATE_PROJECT=		mate-screensaver
MATE_VERSION=		1.18.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86misc Xxf86vm
WANTLIB += c dconf drm epoxy expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl lzma m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xkbfile xml2
WANTLIB += z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo dbus-1
WANTLIB += dbus-glib-1 gdk-3 graphite2 gtk-3 harfbuzz mate-desktop-2
WANTLIB += mate-menu matekbd matekbdui notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 xklavier
WANTLIB += startup-notification-1 xcb-util

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libnotify \
			x11/dbus-glib \
			x11/mate/desktop \
			x11/mate/libmatekbd \
			x11/mate/menus

RUN_DEPENDS=		x11/mate/session-manager

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

CONFIGURE_ARGS=		--enable-authentication-scheme=bsdauth

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

FAKE_FLAGS=		menudir=${PREFIX}/share/examples/mate-screensaver/xdg/menus

post-install:
	@mv ${WRKINST}/etc/xdg/autostart \
		${PREFIX}/share/examples/mate-screensaver/xdg/autostart

.include <bsd.port.mk>
