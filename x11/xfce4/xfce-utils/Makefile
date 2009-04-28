# $OpenBSD: Makefile,v 1.25 2009/04/28 19:47:15 landry Exp $

COMMENT=	Xfce4 essential utilities and scripts

XFCE_PROJECT=	xfce-utils

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus
RUN_DEPENDS=	::x11/xfce4/xfce4-settings \
		::x11/xfce4/xfce4-session \
		::x11/xfce4/exo \
		::textproc/p5-XML-Parser

WANTLIB= 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z

CONFIGURE_ARGS+=--with-browser="xterm -e lynx" \
		--with-xsession-prefix=${PREFIX}

FAKE_FLAGS=	conffilesdir=${PREFIX}/share/examples/xfce-utils \
		autostartdir=${PREFIX}/share/examples/xfce-utils
.include <bsd.port.mk>
