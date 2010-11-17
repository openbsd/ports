# $OpenBSD: Makefile,v 1.26 2010/11/17 08:05:13 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	graph based image processing framework
COMMENT-plugins=gegl plugins

V=		0.1.2
DISTNAME=	gegl-${V}
CATEGORIES=	graphics devel

PKGNAME-main=	gegl-${V}
REVISION-main=	2
PKGNAME-plugins=gegl-plugins-${V}
REVISION-plugins=	1

SHARED_LIBS=	gegl-0.1	0.0 # .101.1

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gegl.org/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gimp.org/pub/gegl/${V:R}/

MULTI_PACKAGES=	-main -plugins

WANTLIB += bz2 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z execinfo

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += X11 Xau Xdmcp Xrender c cairo croco-0.6 expat fontconfig
WANTLIB-main += freetype gdk_pixbuf-2.0 jpeg pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB-main += pthread-stubs xcb xml2 xcb-render xcb-render-util
WANTLIB-main += rsvg-2 babl-0.1

LIB_DEPENDS=	devel/libexecinfo

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			x11/gnome/librsvg \
			graphics/babl

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += Half Iex IlmThread Imath faac faad gsm mp3lame ogg
WANTLIB-plugins += orc-0.4 schroedinger-1.0 speex stdc++ theora
WANTLIB-plugins += vorbis vorbisenc x264 IlmImf>=4 avcodec>=14
WANTLIB-plugins += avformat>=13 avutil>=7

RUN_DEPENDS-plugins= ${BUILD_PKGPATH},-main
LIB_DEPENDS-plugins	= ${LIB_DEPENDS} \
			graphics/openexr \
			graphics/ffmpeg>=20100512

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo" \
		ac_cv_path_ASCIIDOC="no" \
		ac_cv_path_W3M="no" \
		ac_cv_path_ENSCRIPT="no" \
		ac_cv_prog_RUBY=""
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-static \
		--disable-silent-rules \
		--disable-docs \
		--disable-gtk-doc \
		--without-sdl \
		--without-lua \
		--without-libopenraw \
		--without-graphviz \
		--without-libv4l \
		--without-libspiro

# be safe until proven stable
CONFIGURE_ARGS+= --enable-mmx \
		--disable-sse

.include <bsd.port.mk>
