# $OpenBSD: Makefile,v 1.75 2011/04/18 23:11:53 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.1.19
REVISION=	5
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	xine	28.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	FLAC GL GLU SDL X11 Xau Xdamage Xdmcp Xext Xfixes Xinerama \
		Xv XvMCW Xxf86vm a52 avcodec avutil c cdio dca drm dvdnav \
		dvdread expat faac faad fontconfig freetype gsm iso9660 jpeg \
		lcms m mad modplug mpcdec mng mp3lame ogg orc-0.4 postproc \
		pthread-stubs pthread schroedinger-1.0 sndio speex theora \
		theoradec theoraenc usbhid vcdinfo vorbis vorbisenc vpx \
		wavpack x264 xcb-shape xcb-shm xcb-xv xcb z

XINEAPI_REV=	1.29
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext
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
		multimedia/libdvdnav \
		multimedia/libtheora \
		graphics/ffmpeg \
		graphics/libmng \
		graphics/vcdimager

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Di386=1
.else
PKG_ARGS+=	-Di386=0
.endif

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65
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

.include <bsd.port.mk>
