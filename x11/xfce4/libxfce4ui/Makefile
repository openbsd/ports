# $OpenBSD: Makefile,v 1.3 2011/10/13 16:43:21 jasper Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfce4ui
REVISION=	1

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

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-aux xcb-render xcb-shm
WANTLIB += xfce4util xfconf-0 z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
