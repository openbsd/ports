# $OpenBSD: Makefile,v 1.55 2009/08/03 11:03:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia decoding library

V=		1.1.16.3
DISTNAME=	xine-lib-${V}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	xine	25.0

HOMEPAGE=	http://www.xine-project.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xext Xinerama Xrandr Xrender Xv XvMCW c \
		dvdread expat fontconfig freetype jpeg lcms m pthread sndio \
		usbhid z

XINEAPI_REV=	1.26
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
		vorbis.>=4::audio/libvorbis \
		speex.>=3::audio/speex \
		theora.>=1::multimedia/libtheora \
		wavpack::audio/wavpack

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
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+=--disable-aalib \
		--disable-dxr3 \
		--disable-fb \
		--disable-gdkpixbuf \
		--disable-gnomevfs \
		--disable-opengl \
		--disable-optimizations \
		--disable-oss \
		--disable-samba \
		--disable-v4l \
		--disable-vcd \
		--disable-vidix \
		--with-external-dvdnav=yes \
		--with-external-a52dec=yes \
		--with-external-libmad=yes \
		--with-external-libfaad=yes \
		--with-fontconfig \
		--with-freetype \
		--with-libflac \
		--with-wavpack \
		--without-alsa \
		--without-caca \
		--without-esound \
		--without-imagemagick \
		--without-jack \
		--without-pulseaudio \
		--without-xcb
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		FFMPEG_CPPFLAGS="$$(pkg-config --cflags libavcodec libpostproc)" \
		FFMPEG_LIBS="-lavcodec -lpostproc -pthread" \
		FFMPEG_POSTPROC_LIBS="-lavcodec -lpostproc -pthread" \
		PTHREAD_LIBS="-pthread" \
		PTHREAD_CFLAGS="-pthread" \
		XV_LIBS="-lXv" \
		EXTRA_X_LIBS="-Wl,-R,${LOCALBASE}/lib -Wl,-R,${X11BASE}/lib" \
		ac_cv_member_audio_info_t_output_muted=yes

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/audio_sndio_out.c ${WRKSRC}/src/audio_out
.if ${MACHINE_ARCH} == "i386"
	@cp ${FILESDIR}/i386_set_ldt.c ${WRKSRC}/src/libw32dll/wine
.endif

.include <bsd.port.mk>
