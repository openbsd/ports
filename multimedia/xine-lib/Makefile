# $OpenBSD: Makefile,v 1.133 2017/09/22 21:30:32 sthen Exp $

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.8
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	https://xine-lib.alioth.debian.org/releases/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	33.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU ICE SDL SM X11 X11-xcb
WANTLIB += Xau Xdamage Xdmcp Xext Xfixes Xinerama Xv XvMCW Xxf86vm
WANTLIB += avcodec avformat avutil bluray bz2 c cdio crypto drm
WANTLIB += dvdnav dvdread execinfo expat fontconfig freetype glapi
WANTLIB += gsm iconv intl iso9660 jpeg lcms lzma m mng modplug
WANTLIB += mp3lame mpcdec ogg opus postproc pthread-stubs sndio
WANTLIB += speex ssl swresample theora usbhid v4l2 v4lconvert
WANTLIB += vcdinfo vorbis vorbisenc vpx x264 x265 xcb xcb-dri2
WANTLIB += xcb-glx xcb-shape xcb-shm xcb-xv xdg-basedir xml2 xvidcore
WANTLIB += z

XINEAPI_REV=	2.6
SUBST_VARS+=	XINEAPI_REV

COMPILER=	clang
COMPILER_LANGS=	c
MODCLANG_ARCHS=	amd64 i386

BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	audio/flac \
		audio/libcdio \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		audio/musepack \
		audio/speex \
		converters/libiconv \
		devel/gettext \
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

NO_TEST=	Yes

pre-configure:
	sed -i 's/__u32/u_int32_t/' ${WRKSRC}/src/input/input_pvr.c

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -print | xargs rm

.include <bsd.port.mk>
