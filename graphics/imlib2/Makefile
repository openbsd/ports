COMMENT=	image manipulation library

DISTNAME=	imlib2-1.10.0
SHARED_LIBS=	Imlib2	7.0	# 11.0
CATEGORIES=	graphics

HOMEPAGE=	https://docs.enlightenment.org/api/imlib2/html/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB += X11 X11-xcb Xau Xdmcp Xext Xrender aom bz2 c cairo
WANTLIB += cairo-gobject dav1d de265 expat ffi fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += harfbuzz heif iconv id3tag intl jpeg lzma m openjp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png pthread rsvg-2 tiff webp webpdemux x265 xcb xcb-render
WANTLIB += xcb-shm xml2 z zstd

LIB_DEPENDS+=	archivers/bzip2 \
		audio/libid3tag \
		graphics/giflib \
		graphics/jpeg \
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

CONFIGURE_ARGS+=	--without-jxl \
			--without-ps

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/imlib2.pc.in

post-install:
	rm ${PREFIX}/lib/imlib2/filters/*.la ${PREFIX}/lib/imlib2/loaders/*.la

.include <bsd.port.mk>
