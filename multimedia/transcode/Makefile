# $OpenBSD: Makefile,v 1.41 2011/04/18 23:37:07 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	video stream processing tools

DISTNAME=	transcode-1.1.5
REVISION=	7
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_BERLIOS:=tcforge/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.transcoding.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SDL SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt Xv a52
WANTLIB += avcodec avformat avutil bz2 c dv dvdread faac freetype
WANTLIB += gsm jpeg m mp3lame mpeg2 mpeg2convert ogg orc-0.4 postproc
WANTLIB += pthread pthread-stubs schroedinger-1.0 sndio speex
WANTLIB += theora theoradec theoraenc usbhid vorbis vorbisenc
WANTLIB += vorbisfile vpx x264 xcb xml2 z

FLAVORS=	lzo mjpegtools quicktime altivec
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Di386=1
.else
PKG_ARGS+=	-Di386=0
.endif

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/faac \
		audio/lame \
		audio/liba52 \
		audio/libogg \
		audio/libvorbis \
		devel/libdvdread \
		devel/sdl \
		graphics/ffmpeg>=20080620p10 \
		graphics/jpeg \
		graphics/libmpeg2 \
		multimedia/libdv \
		multimedia/libtheora \
		multimedia/x264 \
		multimedia/xvidcore \
		textproc/libxml

RUN_DEPENDS=	audio/sox \
		audio/vorbis-tools \
		audio/toolame \
		graphics/ffmpeg \
		x11/mplayer

BUILD_DEPENDS+=	devel/libtool

SEPARATE_BUILD=	concurrent

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= autoconf automake
AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools
CONFIGURE_ARGS+=--enable-a52 \
		--enable-a52-default-decoder \
		--enable-bktr \
		--enable-faac \
		--enable-freetype2 \
		--enable-lame \
		--enable-libdv \
		--enable-libdvdread \
		--enable-libiconv \
		--enable-libjpeg \
		--enable-libmpeg2 \
		--enable-libmpeg2convert \
		--enable-libpostproc \
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
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBAVCODEC_EXTRA_LIBS="-pthread"

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=--enable-lzo
WANTLIB +=	lzo2
LIB_DEPENDS+=	archivers/lzo2
PKG_ARGS+=	-Dlzo=1
.else
PKG_ARGS+=	-Dlzo=0
.endif

.if ${FLAVOR:L:Mmjpegtools}
CONFIGURE_ARGS+=--enable-mjpegtools
WANTLIB +=	mjpegutils>=3
LIB_DEPENDS+=	multimedia/mjpegtools
RUN_DEPENDS+=	multimedia/mjpegtools
PKG_ARGS+=	-Dmjpegtools=1
.else
PKG_ARGS+=	-Dmjpegtools=0
.endif

.if ${FLAVOR:L:Mquicktime}
CONFIGURE_ARGS+=--enable-libquicktime
LIB_DEPENDS+=	multimedia/libquicktime
WANTLIB +=	quicktime
MODULES+=	devel/gettext
PKG_ARGS+=	-Dquicktime=1
.else
PKG_ARGS+=	-Dquicktime=0
.endif

.if ${FLAVOR:L:Maltivec}
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
.else
CONFIGURE_ARGS+=--disable-altivec
.endif

post-extract:
	@cp ${FILESDIR}/import_sndio.c ${WRKSRC}/import/

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
