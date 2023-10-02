COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.12.5

SHARED_LIBS +=  	chafa                     3.0 # 8.1

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c cairo cairo-gobject expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 harfbuzz iconv intl jpeg lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png pthread rsvg-2 sharpyuv tiff webp webpdemux xcb
WANTLIB += xcb-render xcb-shm xml2 z zstd

SITES =			https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/libwebp \
			x11/gnome/librsvg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-imagemagick

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
