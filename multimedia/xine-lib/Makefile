# $OpenBSD: Makefile,v 1.111 2014/05/21 23:41:03 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.2.5
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

REVISION=	1

SHARED_LIBS=	xine	31.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	FLAC GL GLU ICE SDL SM X11 Xext Xinerama Xv XvMCW a52 avcodec \
		avformat avutil bluray c cdio dca dvdnav dvdread expat faad \
		fontconfig freetype iso9660 jpeg m mad modplug mpcdec mng ogg \
		postproc pthread pthread-stubs sndio speex theora usbhid vcdinfo \
		vorbis vpx>=5 wavpack xcb-shape xcb-shm xcb-xv xcb xdg-basedir \
		xml2 z

XINEAPI_REV=	2.4
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext
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
		graphics/ffmpeg>=20130319 \
		graphics/jpeg \
		graphics/libmng \
		graphics/vcdimager \
		multimedia/libbluray \
		multimedia/libdvdnav \
		multimedia/libtheora \
		multimedia/libvpx>=1.3.0 \
		x11/libxdg-basedir

# Add back fast math flag since we override CFLAGS
CFLAGS+=	-ffast-math

MAKE_ENV=	V=1

USE_GMAKE=	Yes
# Uses GNU libtool -weak feature
USE_LIBTOOL=	gnu
USE_GROFF=	Yes
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
