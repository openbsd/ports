COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.14.2

SHARED_LIBS +=  	chafa                     4.0 # 9.0

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xdmcp Xext Xrender brotlicommon
WANTLIB += brotlicommon brotlidec brotlienc aom avif c cairo cairo-gobject
WANTLIB += dav1d expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 harfbuzz hwy iconv intl jpeg
WANTLIB += jxl jxl_cms jxl_threads lcms2 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pcre2-8 pixman-1 png pthread rsvg-2 sharpyuv tiff webp webpdemux
WANTLIB += xcb xcb-render xcb-shm xml2 z zstd

SITES =			https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/libavif \
			graphics/libjxl \
			graphics/libwebp \
			x11/gnome/librsvg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-imagemagick

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
