COMMENT=	image manipulation library

DISTNAME=	imlib2-1.11.0
REVISION=	0
SHARED_LIBS=	Imlib2	8.0	# 12.0
CATEGORIES=	graphics

HOMEPAGE=	https://docs.enlightenment.org/api/imlib2/html/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB += ${COMPILER_LIBCXX} X11 X11-xcb Xau Xdmcp Xext aom brotlicommon
WANTLIB += brotlidec brotlienc bz2 c dav1d de265 freetype gif
WANTLIB += heif hwy id3tag jpeg jxl jxl_threads lcms2 lzma m openjp2
WANTLIB += png sharpyuv tiff webp webpdemux x265 xcb xcb-shm z
WANTLIB += zstd

COMPILER=	base-clang ports-gcc

LIB_DEPENDS+=	archivers/bzip2 \
		audio/libid3tag \
		graphics/giflib \
		graphics/jpeg \
		graphics/libjxl \
		graphics/libwebp \
		graphics/openjp2 \
		graphics/png \
		graphics/tiff \
		multimedia/libheif

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
# We have librsvg-2.0 >= 2.46 only for rust archs.
WANTLIB += Xrender cairo cairo-gobject expat ffi fontconfig gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 harfbuzz iconv
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 rsvg-2 xcb-render xml2
LIB_DEPENDS+=		x11/gnome/librsvg
COMMENT_SVG=
.else
CONFIGURE_ARGS+=	--without-svg
COMMENT_SVG=		"@comment "
.endif
SUBST_VARS+=		COMMENT_SVG
UPDATE_PLIST_ARGS+=	-c COMMENT_SVG

CONFIGURE_ARGS+=	--without-ps

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/imlib2.pc.in

post-install:
	rm ${PREFIX}/lib/imlib2/filters/*.la ${PREFIX}/lib/imlib2/loaders/*.la

.include <bsd.port.mk>
