COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.14.0

SHARED_LIBS +=  	chafa                     4.0 # 9.0

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender aom avif c cairo cairo-gobject
WANTLIB += dav1d expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 harfbuzz iconv
WANTLIB += intl jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png pthread rsvg-2 sharpyuv tiff webp
WANTLIB += webpdemux xcb xcb-render xcb-shm xml2 z zstd

SITES =			https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/libavif \
			graphics/libwebp \
			x11/gnome/librsvg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-imagemagick

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
