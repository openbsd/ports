# $OpenBSD: Makefile,v 1.21 2007/11/01 04:01:36 jakemsr Exp $

COMMENT-main=		multimedia decoding library
COMMENT-esd=		esound audio output module for xine-lib
COMMENT-arts=		artsd audio output muodule for xine-lib

V=			1.1.8
DISTNAME=		xine-lib-${V}
PKGNAME-main=		xine-lib-${V}p0
PKGNAME-esd=		xine-lib-esd-${V}
PKGNAME-arts=		xine-lib-arts-${V}
CATEGORIES=		multimedia
SHARED_LIBS=		xine	19.0

HOMEPAGE=		http://xinehq.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

MULTI_PACKAGES=		-main -esd -arts

WANTLIB=		expat fontconfig freetype m z
WANTLIB-main=		${WANTLIB} X11 Xau Xdmcp Xext Xinerama Xrandr \
			Xrender Xv faac jpeg lcms mp3lame usbhid x264
WANTLIB-esd=		${WANTLIB}
WANTLIB-arts=		${WANTLIB} stdc++ glib-2.0 gmodule-2.0 gthread-2.0

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
			avcodec.>=7,avutil.>=2,postproc.>=7::graphics/ffmpeg \
			dvdnav.>=5::multimedia/libdvdnav \
			faad.>=1::audio/faad \
			mad.>=2::audio/libmad \
			mng.>=3::graphics/libmng \
			ogg.>=5::audio/libogg \
			vorbis.>=4,vorbisenc.>=2::audio/libvorbis \
			speex.>=3::audio/speex \
			theora.>=1::multimedia/libtheora

LIB_DEPENDS-esd=	${LIB_DEPENDS} \
			esd.>=2::audio/esound \
			audiofile.>=0::devel/libaudiofile \
			::${BUILD_PKGPATH}
RUN_DEPENDS-esd=	${RUN_DEPENDS}
LIB_DEPENDS-arts=	${LIB_DEPENDS} \
			artsc.>=1::x11/kde/arts3 \
			::${BUILD_PKGPATH}
RUN_DEPENDS-arts=	${RUN_DEPENDS}

SHARED_ONLY=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

SUBST_VARS+=		V

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-optimizations \
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
			--with-esound \
			--with-arts \
			--without-jack \
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
			--with-external-ffmpeg=yes \
			--with-external-dvdnav=yes \
			--with-external-a52dec=yes \
			--with-external-libmad=yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			FFMPEG_CPPFLAGS="$$(pkg-config --cflags libavcodec libpostproc)" \
			FFMPEG_LIBS="$$(pkg-config --libs libavcodec libpostproc)" \
			FFMPEG_POSTPROC_LIBS="$$(pkg-config --libs libavcodec libpostproc)" \
			PTHREAD_LIBS="-pthread" \
			PTHREAD_CFLAGS="-pthread" \
			XV_LIBS="-lXv" \
			ac_cv_member_audio_info_t_output_muted=yes

post-patch:
.if ${MACHINE_ARCH} == "i386"
	cp ${FILESDIR}/i386_set_ldt.c ${WRKSRC}/src/libw32dll/wine/
.endif

.include <bsd.port.mk>
