# $OpenBSD: Makefile,v 1.45 2008/12/29 23:26:21 jakemsr Exp $

SHARED_ONLY=		Yes

COMMENT-main=		multimedia decoding library
COMMENT-jack=		jackd audio output module for xine-lib

V=			1.1.15
DISTNAME=		xine-lib-${V}
PKGNAME-main=		${DISTNAME}p7
PKGNAME-jack=		xine-lib-jack-${V}
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS=		xine	23.0

HOMEPAGE=		http://xinehq.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -jack

WANTLIB=		expat fontconfig freetype m z
WANTLIB-main=		${WANTLIB} X11 Xau Xdmcp Xext Xinerama Xrandr \
			Xrender Xv c jpeg lcms pthread sndio usbhid
WANTLIB-jack=		${WANTLIB}

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif

MODULES=		devel/gettext
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			FLAC.>=5::audio/flac \
			SDL.>=3::devel/sdl \
			a52::audio/liba52 \
			avcodec.>=7,postproc.>=7::graphics/ffmpeg \
			dvdnav.>=5::multimedia/libdvdnav \
			faad.>=2::audio/faad \
			mad.>=2::audio/libmad \
			mng.>=3::graphics/libmng \
			ogg.>=5::audio/libogg \
			vorbis.>=4::audio/libvorbis \
			speex.>=3::audio/speex \
			theora.>=1::multimedia/libtheora

LIB_DEPENDS-jack=	${LIB_DEPENDS} \
			jack::audio/jack \
			xine::${BUILD_PKGPATH}
RUN_DEPENDS-jack=	${RUN_DEPENDS}

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

XINEAPI_REV=		1.24
SUBST_VARS+=		XINEAPI_REV

.if ${MACHINE_ARCH} == "i386"
MAKE_FLAGS+=		TOMSMOCOMP_LINKS=
.else
MAKE_FLAGS+=		TOMSMOCOMP_LINKS=\#
.endif

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--disable-optimizations \
			--disable-mlib \
			--disable-opengl \
			--disable-fb \
			--disable-syncfb \
			--disable-directfb \
			--disable-v4l \
			--disable-dxr3 \
			--disable-vidix \
			--disable-aalib \
			--without-caca \
			--without-xcb \
			--without-pulseaudio \
			--disable-oss \
			--without-alsa \
			--without-esound \
			--with-jack \
			--without-imagemagick \
			--disable-samba \
			--disable-xvmc \
			--enable-shared-xv \
			--disable-static-xv \
			--disable-gnomevfs \
			--disable-gdkpixbuf \
			--with-libflac \
			--with-freetype \
			--with-fontconfig \
			--disable-vcd \
			--with-external-dvdnav=yes \
			--with-external-a52dec=yes \
			--with-external-libmad=yes \
			--with-external-libfaad=yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			FFMPEG_CPPFLAGS="$$(pkg-config --cflags libavcodec libpostproc)" \
			FFMPEG_LIBS="-lavcodec -lpostproc -pthread" \
			FFMPEG_POSTPROC_LIBS="-lavcodec -lpostproc -pthread" \
			PTHREAD_LIBS="-pthread" \
			PTHREAD_CFLAGS="-pthread" \
			XV_LIBS="-lXv" \
			EXTRA_X_LIBS="-Wl,-R,${LOCALBASE}/lib -Wl,-R,${X11BASE}/lib" \
			ac_cv_member_audio_info_t_output_muted=yes

post-extract:
	@cp ${FILESDIR}/audio_sndio_out.c ${WRKSRC}/src/audio_out
.if ${MACHINE_ARCH} == "i386"
	@cp ${FILESDIR}/i386_set_ldt.c ${WRKSRC}/src/libw32dll/wine
.endif

.include <bsd.port.mk>
