COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.13pl20260207
GH_ACCOUNT=	brad0
GH_PROJECT=	xine-lib-1.2
GH_COMMIT=	50d068edeaf3760eceaf537e1f8e9700e03f246c
CATEGORIES=	multimedia

SHARED_LIBS=	xine	38.1

HOMEPAGE=	https://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL FLAC GL GLU ICE LLVM SDL SM
WANTLIB += SvtAv1Enc X11 X11-xcb Xau Xdmcp Xext Xfixes Xinerama
WANTLIB += Xv XvMCW Xxf86vm aom avcodec avformat avutil bluray
WANTLIB += bz2 c cdio crypto dav1d drm drm_amdgpu dvdnav dvdread elf
WANTLIB += execinfo expat fontconfig freetype gbm gcrypt glapi
WANTLIB += gpg-error gsm iconv intl iso9660 jpeg lcms lzma m mng
WANTLIB += modplug mp3lame mpcdec nfs ogg opus png sharpyuv sndio
WANTLIB += speex ssl swresample theora theoradec theoraenc udfread
WANTLIB += usbhid v4l2 v4lconvert va va-drm va-x11 vcdinfo vorbis
WANTLIB += vorbisenc vpx webp webpmux x264 x265 xcb xcb-dri2
WANTLIB += xcb-dri3 xcb-glx xcb-present xcb-randr xcb-shape xcb-shm
WANTLIB += xcb-sync xcb-xfixes xcb-xv xdg-basedir xml2 xshmfence
WANTLIB += xvidcore z

XINEAPI_REV=	2.11
SUBST_VARS+=	XINEAPI_REV

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/xmlto
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
		multimedia/libbluray \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libv4l \
		security/libgcrypt \
		security/libgpg-error \
		x11/libxdg-basedir

# Add back fast math flag since we override CFLAGS
CFLAGS+=	-ffast-math

MAKE_ENV=	V=1

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
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
		--without-gnutls \
		--without-imagemagick \
		--without-libaom
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST=	Yes

post-extract:
	rm -f ${WRKSRC}/.cvsversion

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -delete

.include <bsd.port.mk>
