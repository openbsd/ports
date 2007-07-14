# $OpenBSD: Makefile,v 1.15 2007/07/14 08:53:43 jakemsr Exp $

COMMENT=		"multimedia decoding library"

V=			1.1.7
DISTNAME=		xine-lib-${V}
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
SHARED_LIBS=		xine	18.1

HOMEPAGE=		http://xinehq.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

WANTLIB=		X11 Xau Xdmcp Xext Xinerama Xv expat \
			freetype fontconfig jpeg lcms m usbhid z

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif

MODULES=		gettext
LIB_DEPENDS=		FLAC.>=5::audio/flac \
			SDL.>=3::devel/sdl \
			a52::audio/liba52 \
			avcodec.>=7,postproc.>=7::graphics/ffmpeg \
			dvdnav.>=5::multimedia/libdvdnav \
			mad.>=2::audio/libmad \
			mng.>=3::graphics/libmng \
			ogg.>=5::audio/libogg \
                        vorbis.>=4::audio/libvorbis \
			speex.>=3::audio/speex \
			theora.>=1::multimedia/libtheora

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
			--without-arts \
			--without-esound \
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
			SDL_LIBS="$$(sdl-config --libs)" \
			SDL_CFLAGS="$$(sdl-config --cflags)"

post-patch:
.if ${MACHINE_ARCH} == "i386"
	cp ${FILESDIR}/i386_set_ldt.c ${WRKSRC}/src/libw32dll/wine/
.endif

.include <bsd.port.mk>
