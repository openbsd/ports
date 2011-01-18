# $OpenBSD: Makefile,v 1.1.1.1 2011/01/18 19:59:33 landry Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfce4ui

SHARED_LIBS=	xfce4ui-1		0.0	\
		xfce4kbd-private-2	0.0	# 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

# checking for optional package gladeui-1.0 >= 3.5.0... not found

MODULES=	x11/xfce4

LIB_DEPENDS=	x11/xfce4/xfconf>=4.8.0 \
		x11/gtk+2 \
		devel/startup-notification

CONFIGURE_ARGS+=	--disable-linker-opts

WANTLIB += xfconf-0 gtk-x11-2.0 gdk-x11-2.0 atk-1.0 gdk_pixbuf-2.0 pango-1.0
WANTLIB += startup-notification-1 ICE SM X11 glib-2.0 gobject-2.0 xfce4util
WANTLIB += GL Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm cairo dbus-1 dbus-glib-1
WANTLIB += drm execinfo expat fontconfig freetype gio-2.0 gmodule-2.0
WANTLIB += gthread-2.0 m pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
