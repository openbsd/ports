COMMENT=	minimalistic window manager for X11

DISTNAME=	aewm-1.3.12
REVISION=	7
CATEGORIES=	x11

HOMEPAGE=	http://www.red-bean.com/decklin/aewm/

# X11/9wm
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

SITES=		${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	x11/gtk+2
NO_TEST=	Yes

.include <bsd.port.mk>
