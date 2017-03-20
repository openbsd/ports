# $OpenBSD: Makefile,v 1.130 2017/03/20 08:14:03 ajacoutot Exp $

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.8
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	https://xine-lib.alioth.debian.org/releases/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	33.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += FLAC GL GLU ICE SDL SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xinerama Xv XvMCW Xxf86vm avcodec avformat avutil
WANTLIB += bluray c cdio drm dvdnav dvdread expat fontconfig
WANTLIB += freetype glapi iso9660 jpeg lzma m mng modplug mpcdec
WANTLIB += ogg postproc pthread pthread-stubs sndio speex theora
WANTLIB += usbhid v4l2 v4lconvert vcdinfo vorbis xcb xcb-dri2
WANTLIB += xcb-glx xcb-shape xcb-shm xcb-xv xdg-basedir xml2 z

XINEAPI_REV=	2.6
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext \
		lang/clang

MODCLANG_ARCHS=	amd64 i386

BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	audio/flac \
		audio/libcdio \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		audio/musepack \
		audio/speex \
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
# Uses GNU libtool -weak feature
USE_LIBTOOL=	gnu
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
