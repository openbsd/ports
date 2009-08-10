# $OpenBSD: Makefile,v 1.25 2009/08/10 06:33:02 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		video stream processing tools

DISTNAME=		transcode-1.0.5
PKGNAME=		${DISTNAME}p5
CATEGORIES=		multimedia

HOMEPAGE=		http://www.transcoding.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xpm Xrandr Xrender Xt
WANTLIB += Xv c faac faad freetype m pthread sndio usbhid x264
WANTLIB += z oil-0.3 schroedinger-1.0 pthread-stubs xcb

MASTER_SITES=		http://fromani.exit1.org/
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		lzo mjpegtools quicktime altivec
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-*
.endif

LIB_DEPENDS=		SDL.>=2::devel/sdl \
			a52::audio/liba52 \
			avcodec.>=13.1,avutil.>=6:ffmpeg->=20080620p10:graphics/ffmpeg \
			dv.>=4::multimedia/libdv \
			dvdread.>=3::devel/libdvdread \
			iconv.>=4::converters/libiconv \
			jpeg.>=62::graphics/jpeg \
			mp3lame::audio/lame \
			mpeg2,mpeg2convert::graphics/libmpeg2 \
			ogg.>=5::audio/libogg \
			postproc.>=6::graphics/ffmpeg \
			theora.>=1::multimedia/libtheora \
			vorbis.>=3,vorbisenc.>=2,vorbisfile.>=4::audio/libvorbis \
			xml2.>=8::textproc/libxml

RUN_DEPENDS=		::graphics/ffmpeg \
			::audio/sox \
			::audio/vorbis-tools \
			::audio/toolame \
			::multimedia/xvidcore \
			::x11/mplayer

SEPARATE_BUILD=		concurrent

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBAVCODEC_EXTRA_LIBS="-pthread"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-netstream \
			--enable-statbuffer \
			--enable-a52 \
			--enable-a52-default-decoder \
			--enable-bktr \
			--enable-freetype2 \
			--enable-lame \
			--enable-libdv \
			--enable-libdvdread \
			--enable-libiconv \
			--enable-libjpeg \
			--enable-libpostproc \
			--enable-libxml2 \
			--enable-ogg \
			--enable-sdl \
			--enable-sunau \
			--enable-theora \
			--enable-vorbis \
			--with-libpostproc-includes="${LOCALBASE}/include/libpostproc"

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=	--enable-lzo
LIB_DEPENDS+=		lzo.>=1::archivers/lzo
PKG_ARGS+=		-Dlzo=1
.else
PKG_ARGS+=		-Dlzo=0
.endif

.if ${FLAVOR:L:Mmjpegtools}
CONFIGURE_ARGS+=	--enable-mjpegtools
LIB_DEPENDS+=		mjpegutils.>=3::multimedia/mjpegtools
RUN_DEPENDS+=		::multimedia/mjpegtools
PKG_ARGS+=		-Dmjpegtools=1
.else
PKG_ARGS+=		-Dmjpegtools=0
.endif

.if ${FLAVOR:L:Mquicktime}
CONFIGURE_ARGS+=	--enable-libquicktime
LIB_DEPENDS+=		quicktime::multimedia/libquicktime
WANTLIB+=		GL intl
PKG_ARGS+=		-Dquicktime=1
.else
PKG_ARGS+=		-Dquicktime=0
.endif

.if ${FLAVOR:L:Maltivec}
ONLY_FOR_ARCHS=		powerpc
CONFIGURE_ARGS+=	--enable-altivec
.else
CONFIGURE_ARGS+=	--disable-altivec
.endif

.include <bsd.port.mk>
