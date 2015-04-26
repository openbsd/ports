# $OpenBSD: Makefile,v 1.49 2015/04/26 08:30:17 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		graph based image processing framework
COMMENT-plugins=	gegl plugins

API_VERSION=		0.2
SUBST_VARS=		API_VERSION

V=			${API_VERSION}.0
DISTNAME=		gegl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		graphics devel

PKGNAME-main=		gegl-${V}
PKGNAME-plugins=	gegl-plugins-${V}

REVISION-main=		3
REVISION-plugins=	3

SHARED_LIBS +=  gegl-${API_VERSION}		0.0 # 199.1


HOMEPAGE=		http://gegl.org/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.gimp.org/pub/gegl/${V:R}/

MULTI_PACKAGES=		-main -plugins

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z

MODULES=		devel/gettext \
			textproc/intltool

USE_GMAKE=		Yes

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += X11 Xrender c cairo croco-0.6 expat fontconfig
WANTLIB-main += freetype gdk_pixbuf-2.0 jpeg pango-1.0 lzma
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB-main += pthread-stubs xcb xml2 xcb-render rsvg-2 babl-0.1
WANTLIB-main += Xext jasper xcb-shm graphite2 harfbuzz

BUILD_DEPENDS=		graphics/exiv2

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			x11/gnome/librsvg \
			graphics/babl>=0.1.10

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += gsm mp3lame ogg orc-0.4 IlmImf avutil bz2
WANTLIB-plugins += schroedinger-1.0 speex theoradec theoraenc
WANTLIB-plugins += vorbis vorbisenc x264 avcodec avformat vpx
WANTLIB-plugins += Half Iex IlmThread Imath xvidcore
WANTLIB-plugins += crypto opus pthread stdc++ ssl swresample x265

RUN_DEPENDS-plugins= 	${BUILD_PKGPATH},-main
LIB_DEPENDS-plugins= 	${LIB_DEPENDS} \
			graphics/ilmbase \
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

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-docs \
			--without-umfpack \
			--without-sdl \
			--without-lua \
			--without-libopenraw \
			--without-graphviz \
			--without-libv4l \
			--without-libspiro

# be safe until proven stable
CONFIGURE_ARGS +=	--enable-mmx \
			--disable-sse

# https://bugzilla.gnome.org/show_bug.cgi?id=673580
CONFIGURE_ARGS +=	--without-vala \
			--disable-introspection

post-install:
	rm ${PREFIX}/lib/gegl-0.2/*.{a,la}

.include <bsd.port.mk>
