COMMENT=	Mahjongg game for X11

DISTNAME=	mj-1.16-src
PKGNAME=	x${DISTNAME:S/-src$//}

CATEGORIES=	games

HOMEPAGE=	https://mahjong.julianbradfield.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

MASTER_SITES=	${HOMEPAGE}/Source/

LIB_DEPENDS=	x11/gtk+2

MAKE_FLAGS+=	CC="${CC}" EXTRA_CFLAGS="${CFLAGS}" CDEBUGFLAGS=
# The final '/' matters
FAKE_FLAGS+=	DESTDIR="${WRKINST}${PREFIX}/"

USE_GMAKE=	Yes

NO_TEST=	Yes

# base-gcc fix for "c99 initial declarations in for loops" error
CFLAGS+=	-std=gnu99

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
