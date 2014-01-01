# $OpenBSD: Makefile,v 1.35 2014/01/01 20:46:29 naddy Exp $

COMMENT=	minimalistic window manager for X11

DISTNAME=	aewm-1.3.12
REVISION=	3
CATEGORIES=	x11

HOMEPAGE=	http://www.red-bean.com/decklin/aewm/

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += xcb-render xcb-shm

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2
NO_TEST=	Yes

.include <bsd.port.mk>
