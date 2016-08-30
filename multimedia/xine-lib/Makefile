# $OpenBSD: Makefile,v 1.125 2016/08/30 10:20:15 jasper Exp $

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.6
REVISION=	6
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	32.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += FLAC GL GLU ICE SDL SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xinerama Xv XvMCW Xxf86vm a52 avcodec avformat avutil
WANTLIB += bluray c cdio dca drm dvdnav dvdread expat faad fontconfig
WANTLIB += freetype glapi iso9660 jpeg lzma m mad mng modplug
WANTLIB += mpcdec ogg postproc pthread pthread-stubs sndio speex
WANTLIB += theora usbhid v4l2 v4lconvert vcdinfo vorbis vpx wavpack
WANTLIB += xcb xcb-dri2 xcb-glx xcb-shape xcb-shm xcb-xv xdg-basedir
WANTLIB += xml2 z

XINEAPI_REV=	2.5
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext \
		lang/clang

MODCLANG_ARCHS=	amd64 i386

BUILD_DEPENDS=	textproc/xmlto
LIB_DEPENDS=	audio/faad \
		audio/flac \
		audio/liba52 \
		audio/libcdio \
		audio/libdca \
		audio/libmad \
		audio/libmodplug \
		audio/libogg \
		audio/libvorbis \
		audio/musepack \
		audio/speex \
		audio/wavpack \
		devel/sdl \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libmng \
		graphics/vcdimager \
		multimedia/libbluray>=0.8.0 \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libv4l \
		multimedia/libvpx>=1.3.0 \
		x11/libxdg-basedir

# Add back fast math flag since we override CFLAGS
CFLAGS+=	-ffast-math

MAKE_ENV=	V=1

USE_GMAKE=	Yes
# Uses GNU libtool -weak feature
USE_LIBTOOL=	gnu
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+=--disable-aalib \
		--disable-gdkpixbuf \
		--disable-gnomevfs \
		--disable-optimizations \
		--disable-real-codecs \
		--disable-samba \
		--disable-w32dll \
		--with-external-dvdnav \
		--with-fontconfig \
		--with-freetype \
		--with-wavpack \
		--without-caca \
		--without-esound \
		--without-imagemagick
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_header_execinfo_h=no

NO_TEST=	Yes

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -print | xargs rm

.include <bsd.port.mk>
