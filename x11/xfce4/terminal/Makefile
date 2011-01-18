# $OpenBSD: Makefile,v 1.24 2011/01/18 20:50:50 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.4.5
XFCE_GOODIE=	Terminal
# :L is here for a reason
PKGNAME=	xfce4-${DISTNAME:L}
REVISION=	3

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes
USE_GROFF =	Yes
CONFIGURE_ARGS +=	--program-transform-name='s/Terminal/xfce4-terminal/' \
			--disable-linker-opts

LIB_DEPENDS=	x11/xfce4/exo \
		x11/dbus-glib \
		devel/vte

WANTLIB=	X11 atk-1.0 c dbus-1 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		ICE SM Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype \
		gmodule-2.0 gthread-2.0 m ncurses pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		xcb xcb-render GL Xxf86vm drm xcb-shm z exo-1 dbus-glib-1 vte \
		glib-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 xfce4util

.include <bsd.port.mk>
