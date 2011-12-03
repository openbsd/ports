# $OpenBSD: Makefile,v 1.36 2011/12/03 22:39:11 ajacoutot Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfcegui4

REVISION=	2

SHARED_LIBS=	xfcegui4	5.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS+=	--disable-linker-opts
LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.8.0 \
		devel/startup-notification \
		devel/libglade2

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs startup-notification-1
WANTLIB += xcb xcb-aux xcb-render xcb-shm xfce4util xml2 z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
