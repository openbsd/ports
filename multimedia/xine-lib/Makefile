# $OpenBSD: Makefile,v 1.143 2019/08/19 06:04:23 ajacoutot Exp $

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.9
REVISION=	3
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	34.0

HOMEPAGE=	https://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU ICE SDL SM X11 X11-xcb
WANTLIB += Xau Xdamage Xdmcp Xext Xfixes Xinerama Xv XvMCW Xxf86vm
WANTLIB += avcodec avformat avutil bluray bz2 c cdio crypto drm
WANTLIB += dvdnav dvdread execinfo expat fontconfig freetype glapi
WANTLIB += gsm iconv intl iso9660 jpeg lcms lzma m mng modplug
WANTLIB += mp3lame mpcdec ogg opus postproc sndio
WANTLIB += speex ssl swresample theora usbhid v4l2 v4lconvert
WANTLIB += vcdinfo vorbis vorbisenc vpx x264 x265 xcb xcb-dri2
WANTLIB += xcb-glx xcb-shape xcb-shm xcb-xv xdg-basedir xml2 xvidcore
WANTLIB += z

XINEAPI_REV=	2.7
SUBST_VARS+=	XINEAPI_REV

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	audio/flac \
		audio/libcdio \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		audio/musepack \
		audio/speex \
		converters/libiconv \
		devel/gettext,-runtime \
		devel/sdl \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libmng \
		graphics/vcdimager \
		multimedia/libbluray>=0.8.0 \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libv4l \
		x11/libxdg-basedir

# Add back fast math flag since we override CFLAGS
CFLAGS+=	-ffast-math

MAKE_ENV=	V=1

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+=--disable-a52dec \
		--disable-aalib \
		--disable-dts \
		--disable-faad \
		--disable-gdkpixbuf \
		--disable-gnomevfs \
		--disable-mad \
		--disable-optimizations \
		--disable-real-codecs \
		--disable-samba \
		--disable-vpx \
		--disable-w32dll \
		--with-external-dvdnav \
		--with-fontconfig \
		--with-freetype \
		--without-caca \
		--without-esound \
		--without-imagemagick
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_header_execinfo_h=no

.if ${MACHINE_ARCH:Maarch64}
# The configure script runs `cc -print-prog-name=as'
# if an AS env var isn't set, then tries to find that program.
# Since there is no /usr/bin/as on arm64, this causes configure
# to bail out and nothing gets built.
# Let's just lie if we're on arm64.
CONFIGURE_ENV+=	AS="${CC}"
.endif

NO_TEST=	Yes

pre-configure:
	sed -i 's/__u32/u_int32_t/' ${WRKSRC}/src/input/input_pvr.c

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -print | xargs rm

.include <bsd.port.mk>
