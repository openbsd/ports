# $OpenBSD: Makefile,v 1.5 2011/10/14 12:22:00 jasper Exp $

COMMENT=	Xfce4 mount device panel plugin

XFCE_VERSION=	0.5.5
XFCE_PLUGIN=	mount
REVISION=	3

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util xfcegui4 z

# needed to correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS="-liconv"

.include <bsd.port.mk>
