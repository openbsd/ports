# $OpenBSD: Makefile,v 1.31 2010/07/27 12:58:43 landry Exp $

COMMENT=	Xfce4 desktop panel

XFCE_VERSION=	4.6.4
XFCE_PROJECT=	xfce4-panel
REVISION=	0

SHARED_LIBS=	xfce4panel	2.3	#2.2

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	::x11/xfce4/libxfcegui4 \
		::x11/xfce4/exo \
		::devel/libwnck

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util z pthread-stubs xcb \
		execinfo xcb-atom xcb-aux xcb-event gthread-2.0 pthread \
		xcb-render xcb-render-util exo-0.3 wnck-1 xfcegui4


FAKE_FLAGS=	confdir=${PREFIX}/share/examples/xfce4-panel

.include <bsd.port.mk>
