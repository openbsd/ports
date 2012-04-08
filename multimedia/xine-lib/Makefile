# $OpenBSD: Makefile,v 1.89 2012/04/08 19:19:04 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.1.20.1
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	xine	29.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	FLAC GL GLU SDL X11 Xau Xdamage Xdmcp Xext Xfixes Xinerama \
		Xv XvMCW Xxf86vm a52 avcodec avutil bluray c cdio dca drm \
		dvdnav dvdread expat faad fontconfig freetype gsm iso9660 \
		jpeg lcms m mad modplug mpcdec mng mp3lame ogg orc-0.4 \
		postproc pthread-stubs pthread schroedinger-1.0 sndio speex \
		stdc++ theora theoradec theoraenc usbhid vcdinfo vorbis \
		vorbisenc vpx wavpack x264 xcb-shape xcb-shm xcb-xv xcb \
		xml2 z

XINEAPI_REV=	1.30
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	audio/faad \
		audio/flac \
		audio/liba52 \
		audio/libcdio \
		audio/libdca \
		audio/libmad \
		audio/libmodplug \
		audio/libmpcdec \
		audio/libogg \
		audio/libvorbis \
		audio/speex \
		audio/wavpack \
		devel/sdl \
		multimedia/libbluray \
		multimedia/libdvdnav \
		multimedia/libtheora \
		graphics/ffmpeg>=20111126 \
		graphics/libmng \
		graphics/vcdimager

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-aalib \
		--disable-dxr3 \
		--disable-fb \
		--disable-gdkpixbuf \
		--disable-gnomevfs \
		--disable-libv4l \
		--disable-optimizations \
		--disable-oss \
		--disable-real-codecs \
		--disable-samba \
		--disable-sunaudio \
		--disable-vidix \
		--disable-w32dll \
		--with-external-a52dec \
		--with-external-dvdnav \
		--with-external-libdts \
		--with-external-libfaad \
		--with-external-libmad \
		--with-external-libmpcdec \
		--with-fontconfig \
		--with-freetype \
		--with-wavpack \
		--without-alsa \
		--without-caca \
		--without-esound \
		--without-imagemagick \
		--without-jack \
		--without-pulseaudio
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-extract:
	@perl -pi -e 's/\r\n/\n/g' ${WRKSRC}/src/demuxers/asfheader.c

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    sh autogen.sh noconfig

post-install:
	@find ${PREFIX}/lib/xine/plugins -name '*.a' -print | xargs rm

.include <bsd.port.mk>
