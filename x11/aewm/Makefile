# $OpenBSD: Makefile,v 1.36 2014/11/05 11:43:59 sthen Exp $

COMMENT=	minimalistic window manager for X11

DISTNAME=	aewm-1.3.12
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://www.red-bean.com/decklin/aewm/

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2
NO_TEST=	Yes

.include <bsd.port.mk>
