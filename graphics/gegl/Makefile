# $OpenBSD: Makefile,v 1.70 2019/11/10 15:32:55 ajacoutot Exp $

PORTROACH=		limit:^0\.2

COMMENT-main=		graph based image processing framework
COMMENT-plugins=	gegl plugins

API_VERSION=		0.2
SUBST_VARS=		API_VERSION

V=			${API_VERSION}.2
DISTNAME=		gegl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		graphics devel

PKGNAME-main=		gegl-${V}
PKGNAME-plugins=	gegl-plugins-${V}

REVISION-main=		3
REVISION-plugins=	4

SHARED_LIBS +=  gegl-0.2             0.0      # 201.1
SHARED_LIBS +=  gegl-sc-0.2          0.0      # unknown

HOMEPAGE=		http://gegl.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.gimp.org/pub/gegl/${V:R}/

MULTI_PACKAGES=		-main -plugins

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m pcre z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender babl-0.1 c cairo croco-0.6 expat fontconfig
WANTLIB-main += freetype fribidi gdk_pixbuf-2.0 graphite2 harfbuzz
WANTLIB-main += jasper jpeg lzma pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 png pthread rsvg-2 xcb xcb-render xcb-shm
WANTLIB-main += xml2 cairo-gobject

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IexMath-2_4 IlmImf-2_4
WANTLIB-plugins += IlmThread-2_4 Imath-2_4 aom avcodec avformat avutil
WANTLIB-plugins += babl-0.1 bz2 crypto dav1d gegl-0.2 gsm lzma mp3lame
WANTLIB-plugins += ogg opus speex ssl swresample theoradec theoraenc vorbis
WANTLIB-plugins += vorbisenc vpx x264 x265 xml2 xvidcore

MODULES=		textproc/intltool

USE_GMAKE=		Yes

BUILD_DEPENDS=		graphics/exiv2

LIB_DEPENDS-main= 	x11/gnome/librsvg \
			graphics/babl

LIB_DEPENDS-plugins= 	${BUILD_PKGPATH},-main \
			graphics/openexr \
			graphics/ffmpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_execinfo_h="no" \
			ac_cv_path_ASCIIDOC="no" \
			ac_cv_path_W3M="no" \
			ac_cv_path_ENSCRIPT="no" \
			ac_cv_prog_RUBY="" \
			ac_cv_path_DOT="no"

CONFIGURE_ARGS=		--enable-mmx \
			--disable-docs \
			--without-umfpack \
			--without-sdl \
			--without-lua \
			--without-libopenraw \
			--without-graphviz \
			--without-libv4l \
			--without-libspiro

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse
.else
CONFIGURE_ARGS +=	--disable-sse
.endif

# https://bugzilla.gnome.org/show_bug.cgi?id=673580
CONFIGURE_ARGS +=	--without-vala \
			--disable-introspection

post-install:
	rm ${PREFIX}/lib/gegl-0.2/*.{a,la}

.include <bsd.port.mk>
