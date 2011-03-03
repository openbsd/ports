# $OpenBSD: Makefile,v 1.36 2011/03/03 21:07:56 landry Exp $

COMMENT=	Xfce4 desktop manager

XFCE_PROJECT=	xfdesktop
XFCE_VERSION=	4.8.1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0 \
		x11/xfce4/exo>=0.6.0 \
		x11/xfce4/garcon>=0.1.2 \
		x11/xfce4/thunar>=1.2.0 \
		x11/xfce4/xfconf>=4.8.0 \
		devel/libnotify \
		devel/libwnck

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 exo-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread xcb-render \
		startup-notification-1 wnck-1 xfce4util z notify thunarx-2 \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event \
		garcon-1 xfce4ui-1 xfconf-0 GL Xxf86vm drm xcb-shm

FAKE_FLAGS=	menudir=${PREFIX}/share/examples/xfdesktop

.include <bsd.port.mk>
