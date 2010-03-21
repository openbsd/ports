# $OpenBSD: Makefile,v 1.61 2010/03/21 01:41:15 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

V=		1.1.18.1
DISTNAME=	xine-lib-${V}
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	xine	27.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xext Xinerama Xrandr Xrender Xv XvMCW c \
		dvdread expat faac fontconfig freetype jpeg lcms m \
		mp3lame oil-0.3 pthread-stubs pthread schroedinger-1.0 \
		sndio usbhid x264 xcb-shape xcb-shm xcb-xv xcb z

XINEAPI_REV=	1.28
SUBST_VARS+=	XINEAPI_REV

MODULES=	devel/gettext
LIB_DEPENDS=	FLAC.>=5::audio/flac \
		SDL.>=3::devel/sdl \
		a52::audio/liba52 \
		avcodec.>=7,avutil.>=6,postproc.>=7::graphics/ffmpeg \
		dvdnav.>=6::multimedia/libdvdnav \
		faad.>=2::audio/faad \
		mad.>=2::audio/libmad \
		mng.>=3::graphics/libmng \
		ogg.>=5::audio/libogg \
		vorbis.>=4,vorbisenc.>=3::audio/libvorbis \
		speex.>=3::audio/speex \
		theora.>=1::multimedia/libtheora \
		wavpack::audio/wavpack \
		dca::audio/libdca \
		mpcdec::audio/libmpcdec

.if ${MACHINE_ARCH} == "i386"
MAKE_FLAGS+=	TOMSMOCOMP_LINKS=
PKG_ARGS+=	-Di386=1
.else
MAKE_FLAGS+=	TOMSMOCOMP_LINKS=\#
PKG_ARGS+=	-Di386=0
.endif

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.62
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
		--disable-vcd \
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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
