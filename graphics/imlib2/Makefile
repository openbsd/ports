COMMENT=	image manipulation library

DISTNAME=	imlib2-1.10.0
REVISION=	0
SHARED_LIBS=	Imlib2	7.0	# 11.0
CATEGORIES=	graphics

HOMEPAGE=	https://docs.enlightenment.org/api/imlib2/html/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB += ${COMPILER_LIBCXX} X11 X11-xcb Xau Xdmcp Xext Xrender
WANTLIB += aom brotlicommon brotlidec brotlienc bz2 c cairo cairo-gobject
WANTLIB += dav1d de265 expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 harfbuzz
WANTLIB += heif hwy iconv id3tag intl jpeg jxl jxl_threads lcms2
WANTLIB += lzma m openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png rsvg-2 tiff webp webpdemux x265
WANTLIB += xcb xcb-render xcb-shm xml2 z zstd

LIB_DEPENDS+=	archivers/bzip2 \
		audio/libid3tag \
		graphics/giflib \
		graphics/jpeg \
		graphics/libjxl \
		graphics/libwebp \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff \
		multimedia/libheif \
		x11/gnome/librsvg

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

CONFIGURE_ARGS+=	--without-ps

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/imlib2.pc.in

post-install:
	rm ${PREFIX}/lib/imlib2/filters/*.la ${PREFIX}/lib/imlib2/loaders/*.la

.include <bsd.port.mk>
