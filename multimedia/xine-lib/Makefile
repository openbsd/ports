# $OpenBSD: Makefile,v 1.68 2010/10/18 21:25:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

DISTNAME=	xine-lib-1.1.19
REVISION=	1
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
WANTLIB=	FLAC.>=5 GL GLU SDL.>=3 X11 Xau Xdmcp Xext Xinerama Xv \
		XvMCW a52 avcodec.>=7 avutil.>=6 c cdio dca dvdnav.>=6 \
		dvdread expat faac faad.>=2 fontconfig freetype gsm iso9660 \
		jpeg lcms m mad.>=2 mpcdec mng.>=3 mp3lame ogg.>=5 orc-0.4 \
		postproc.>=7 pthread-stubs pthread schroedinger-1.0 sndio \
		speex.>=3 theora.>=1 usbhid vcdinfo vorbis.>=4 vorbisenc.>=3 \
		wavpack x264 xcb-shape xcb-shm xcb-xv xcb z

XINEAPI_REV=	1.29
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext
LIB_DEPENDS=	::audio/faad \
		::audio/flac \
		::audio/liba52 \
		::audio/libcdio \
		::audio/libdca \
		::audio/libmad \
		::audio/libmpcdec \
		::audio/libogg \
		::audio/libvorbis \
		::audio/speex \
		::audio/wavpack \
		::devel/sdl \
		::multimedia/libdvdnav \
		::multimedia/libtheora \
		::graphics/ffmpeg \
		::graphics/libmng \
		::graphics/vcdimager

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Di386=1
.else
PKG_ARGS+=	-Di386=0
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.64
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
