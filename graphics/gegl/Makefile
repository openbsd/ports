# $OpenBSD: Makefile,v 1.45 2014/04/07 06:50:40 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	graph based image processing framework
COMMENT-plugins=gegl plugins

API_VERSION=	0.2
V=		${API_VERSION}.0
DISTNAME=	gegl-${V}
CATEGORIES=	graphics devel

PKGNAME-main=	gegl-${V}
PKGNAME-plugins=gegl-plugins-${V}

REVISION-main=		2
REVISION-plugins=	2

SHARED_LIBS +=  gegl-${API_VERSION}		0.0 # 199.1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.gimp.org/pub/gegl/${V:R}/ \
		ftp://ftp.sunet.se/pub/gnu/babl/${V:R}/ \
		ftp://ftp.cs.umn.edu/pub/gimp/pub/babl/${V:R}/

MULTI_PACKAGES=	-main -plugins

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z execinfo ffi

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes

SUBST_VARS=	API_VERSION

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += X11 Xrender c cairo croco-0.6 expat fontconfig
WANTLIB-main += freetype gdk_pixbuf-2.0 jpeg pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB-main += pthread-stubs xcb xml2 xcb-render rsvg-2 babl-0.1
WANTLIB-main += Xext jasper xcb-shm graphite2 harfbuzz

BUILD_DEPENDS=	graphics/exiv2
LIB_DEPENDS=	devel/libexecinfo

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			x11/gnome/librsvg \
			graphics/babl>=0.1.10

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += gsm mp3lame ogg orc-0.4 IlmImf avutil bz2
WANTLIB-plugins += schroedinger-1.0 speex theoradec theoraenc
WANTLIB-plugins += vorbis vorbisenc x264 avcodec avformat vpx
WANTLIB-plugins += Half Iex IlmThread Imath xvidcore
WANTLIB-plugins += crypto opus pthread stdc++ ssl

RUN_DEPENDS-plugins= 	${BUILD_PKGPATH},-main
LIB_DEPENDS-plugins= 	${LIB_DEPENDS} \
			graphics/ilmbase \
			graphics/openexr \
			graphics/ffmpeg>=20130319

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
		ac_cv_path_ASCIIDOC="no" \
		ac_cv_path_W3M="no" \
		ac_cv_path_ENSCRIPT="no" \
		ac_cv_prog_RUBY="" \
		ac_cv_path_DOT="no"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-docs \
		--without-umfpack \
		--without-sdl \
		--without-lua \
		--without-libopenraw \
		--without-graphviz \
		--without-libv4l \
		--without-libspiro

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=673580
#BUILD_DEPENDS += lang/vala \
#		devel/gobject-introspection
CONFIGURE_ARGS += --without-vala \
		--disable-introspection

# be safe until proven stable
CONFIGURE_ARGS+= --enable-mmx \
		--disable-sse

post-install:
	rm ${PREFIX}/lib/gegl-0.2/*.{a,la}

.include <bsd.port.mk>
