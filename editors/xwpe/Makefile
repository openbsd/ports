COMMENT=	powerful programming editor

V=		1.6.9
REVISION=	0
DISTNAME=	xwpe-$V
CATEGORIES=	editors

SITES=		https://codeberg.org/mendezr/xwpe/releases/download/v$V/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext Xft c cairo curses execinfo fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 harfbuzz intl json-c
WANTLIB += pango-1.0 pangocairo-1.0 pthread util vterm z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

LIB_DEPENDS=	devel/json-c \
		devel/libvterm \
		devel/pango \
		graphics/cairo
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-wayland

USE_GMAKE=	Yes

.include <bsd.port.mk>
