# $OpenBSD: Makefile,v 1.36 2011/06/18 08:25:59 landry Exp $

COMMENT=	Xfce4 essential utilities and scripts

XFCE_PROJECT=	xfce-utils
XFCE_VERSION=	4.8.2

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0 \
		x11/dbus-glib

RUN_DEPENDS=	x11/xfce4/xfce4-settings \
		x11/xfce4/xfce4-session \
		x11/xfce4/exo \
		textproc/p5-XML-Parser

WANTLIB= 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event gthread-2.0 \
		xcb-render dbus-1 dbus-glib-1 GL Xxf86vm drm xcb-shm xfce4ui-1

CONFIGURE_ARGS+=--with-browser="xterm -e lynx" \
		--disable-linker-opts \
		--with-xsession-prefix=${PREFIX}

FAKE_FLAGS=	conffilesdir=${PREFIX}/share/examples/xfce-utils \
		autostartdir=${PREFIX}/share/examples/xfce-utils

# XXX workaround for pkg_add bug when a symlink to a dir becomes a real dir
post-install:
	rm -Rf ${PREFIX}/share/doc/xfce-utils/html/el/images/
	ln -s ${TRUEPREFIX}/share/doc/xfce-utils/html/C/images ${PREFIX}/share/doc/xfce-utils/html/el/images

.include <bsd.port.mk>
