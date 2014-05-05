# $OpenBSD: Makefile,v 1.57 2014/05/05 11:51:37 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	video stream processing tools

DISTNAME=	transcode-1.1.7
REVISION=	4
CATEGORIES=	multimedia
MASTER_SITES=	http://cdn.bitbucket.org/france/transcode-tcforge/downloads/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.transcoding.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt Xv a52 avcodec
WANTLIB += avformat avutil bz2 c crypto dv dvdcss dvdread freetype gsm jpeg
WANTLIB += m mp3lame mpeg2 mpeg2convert ogg opus orc-0.4 postproc pthread
WANTLIB += pthread-stubs quicktime schroedinger-1.0 sndio speex ssl theora
WANTLIB += theoradec theoraenc usbhid vorbis vorbisenc vorbisfile vpx x264
WANTLIB += xcb xml2 z

# xvidcore is dlopen()d so check-lib-depends shows it as Extra, however we
# want to track changes to the ABI to ensure transcode is updated if needed.
WANTLIB += xvidcore

FLAVORS=	lzo mjpegtools altivec
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Di386=1
.else
PKG_ARGS+=	-Di386=0
.endif

MODULES=	devel/gettext

AUTOCONF_VERSION= 2.68
AUTOMAKE_VERSION= 1.11

LIB_DEPENDS=	audio/lame \
		audio/liba52 \
		audio/libogg \
		audio/libvorbis \
		devel/libdvdread \
		devel/sdl \
		graphics/ffmpeg>=20121026 \
		graphics/jpeg \
		graphics/libmpeg2 \
		multimedia/libdv \
		multimedia/libquicktime \
		multimedia/libtheora \
		multimedia/x264 \
		multimedia/xvidcore \
		textproc/libxml

RUN_DEPENDS=	audio/sox \
		audio/vorbis-tools \
		audio/toolame \
		graphics/ffmpeg \
		x11/mplayer

BUILD_DEPENDS+=	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

SEPARATE_BUILD=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools
CONFIGURE_ARGS+=--enable-a52 \
		--enable-bktr \
		--enable-freetype2 \
		--enable-lame \
		--enable-libdv \
		--enable-libdvdread \
		--enable-libiconv \
		--enable-libjpeg \
		--enable-libmpeg2 \
		--enable-libmpeg2convert \
		--enable-libpostproc \
		--enable-libquicktime \
		--enable-libxml2 \
		--enable-netstream \
		--enable-ogg \
		--enable-sdl \
		--enable-statbuffer \
		--enable-sndio \
		--enable-theora \
		--enable-vorbis \
		--enable-xvid \
		--enable-x264
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.if ${FLAVOR:Mlzo}
CONFIGURE_ARGS+=--enable-lzo
WANTLIB +=	lzo2
LIB_DEPENDS+=	archivers/lzo2
PKG_ARGS+=	-Dlzo=1
.else
PKG_ARGS+=	-Dlzo=0
.endif

.if ${FLAVOR:Mmjpegtools}
CONFIGURE_ARGS+=--enable-mjpegtools
WANTLIB +=	mjpegutils
LIB_DEPENDS+=	multimedia/mjpegtools
RUN_DEPENDS+=	multimedia/mjpegtools
PKG_ARGS+=	-Dmjpegtools=1
.else
PKG_ARGS+=	-Dmjpegtools=0
.endif

.if ${FLAVOR:Maltivec}
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
.else
CONFIGURE_ARGS+=--disable-altivec
.endif

post-extract:
	@cp ${FILESDIR}/import_sndio.c ${WRKSRC}/import

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -if

post-install:
	@rm -f ${PREFIX}/lib/transcode/*.la

.include <bsd.port.mk>
