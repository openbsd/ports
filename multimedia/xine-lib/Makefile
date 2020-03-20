# $OpenBSD: Makefile,v 1.145 2020/03/20 16:44:25 naddy Exp $

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.10
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	35.0

HOMEPAGE=	https://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL FLAC GL GLU ICE SDL SM X11 X11-xcb
WANTLIB += Xau Xdamage Xdmcp Xext Xfixes Xinerama Xv XvMCW Xxf86vm aom
WANTLIB += avcodec avformat avutil bluray bz2 c cdio crypto dav1d drm
WANTLIB += dvdnav dvdread execinfo expat fontconfig freetype gbm
WANTLIB += glapi gsm iconv intl iso9660 jpeg lcms lzma m mng modplug
WANTLIB += mp3lame mpcdec nfs ogg opus png postproc sndio speex
WANTLIB += ssl swresample theora theoradec theoraenc usbhid v4l2
WANTLIB += v4lconvert vcdinfo vorbis vorbisenc vpx x264 x265 xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-shape xcb-shm
WANTLIB += xcb-sync xcb-xfixes xcb-xv xdg-basedir xml2 xshmfence
WANTLIB += xvidcore z

XINEAPI_REV=	2.8
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
		devel/libnfs \
		devel/sdl \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libmng \
		graphics/png \
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
		--disable-libmpeg2 \
		--disable-mad \
		--disable-optimizations \
		--disable-real-codecs \
		--disable-samba \
		--disable-sftp \
		--disable-vpx \
		--disable-w32dll \
		--disable-wayland \
		--with-external-dvdnav \
		--with-fontconfig \
		--with-freetype \
		--without-caca \
		--without-dav1d \
		--without-esound \
		--without-imagemagick \
		--without-libaom
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_header_execinfo_h=no

NO_TEST=	Yes

pre-configure:
	sed -i 's/__u32/u_int32_t/' ${WRKSRC}/src/input/input_pvr.c

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -delete

.include <bsd.port.mk>
