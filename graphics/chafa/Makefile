COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.18.1

SHARED_LIBS +=  	chafa	6.0 # 10.0

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Lerc X11 Xau Xdmcp Xext Xrender
WANTLIB += aom avif brotlicommon brotlidec brotlienc c cairo dav1d
WANTLIB += de265 expat ffi fontconfig freetype fribidi gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += harfbuzz heif hwy iconv intl jpeg jxl jxl_cms jxl_threads
WANTLIB += lcms2 lzma m openh264 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png rsvg-2 sharpyuv tiff webp webpdemux
WANTLIB += x264 x265 xcb xcb-render xcb-shm xml2 z zstd

SITES =			https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/libavif \
			graphics/libjxl \
			graphics/libwebp \
			multimedia/libheif \
			x11/gnome/librsvg

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA} ${WRKSRC}/tools/completions/fish-completion.fish \
		${PREFIX}/share/fish/vendor_completions.d/chafa.fish
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/tools/completions/zsh-completion.zsh \
		${PREFIX}/share/zsh/site-functions/_chafa

.include <bsd.port.mk>
