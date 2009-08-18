# $OpenBSD: Makefile,v 1.26 2009/08/18 22:24:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	video stream processing tools

DISTNAME=	transcode-1.1.3
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_BERLIOS:=tcforge/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.transcoding.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xpm Xrandr Xrender Xt \
		Xv bz2 c faad freetype m oil-0.3 pthread-stubs pthread \
		schroedinger-1.0 sndio usbhid xcb z

FLAVORS=	lzo mjpegtools quicktime altivec
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Di386=1
.else
PKG_ARGS+=	-Di386=0
.endif

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

MODULES=	converters/libiconv
LIB_DEPENDS=	SDL.>=2::devel/sdl \
		a52::audio/liba52 \
		avcodec.>=13.1,avformat.>=12,avutil.>=6,postproc.>=6:ffmpeg->=20080620p10:graphics/ffmpeg \
		dv.>=4::multimedia/libdv \
		dvdread.>=3::devel/libdvdread \
		jpeg.>=62::graphics/jpeg \
		mp3lame::audio/lame \
		faac::audio/faac \
		mpeg2,mpeg2convert::graphics/libmpeg2 \
		ogg.>=5::audio/libogg \
		theora.>=1::multimedia/libtheora \
		vorbis.>=3,vorbisenc.>=2,vorbisfile.>=4::audio/libvorbis \
		xml2.>=8::textproc/libxml \
		xvidcore::multimedia/xvidcore \
		x264::multimedia/x264
RUN_DEPENDS=	::graphics/ffmpeg \
		::audio/sox \
		::audio/vorbis-tools \
		::audio/toolame \
		::x11/mplayer

SEPARATE_BUILD=	concurrent

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
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
		--enable-libpostproc \
		--enable-libxml2 \
		--enable-netstream \
		--enable-ogg \
		--enable-sdl \
		--enable-statbuffer \
		--enable-sunau \
		--enable-theora \
		--enable-vorbis \
		--enable-xvid \
		--enable-x264
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		LIBAVCODEC_EXTRA_LIBS="-pthread"

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=	--enable-lzo
LIB_DEPENDS+=		lzo2::archivers/lzo2
PKG_ARGS+=		-Dlzo=1
.else
PKG_ARGS+=		-Dlzo=0
.endif

.if ${FLAVOR:L:Mmjpegtools}
CONFIGURE_ARGS+=--enable-mjpegtools
LIB_DEPENDS+=	mjpegutils.>=3::multimedia/mjpegtools
RUN_DEPENDS+=	::multimedia/mjpegtools
PKG_ARGS+=	-Dmjpegtools=1
.else
PKG_ARGS+=	-Dmjpegtools=0
.endif

.if ${FLAVOR:L:Mquicktime}
CONFIGURE_ARGS+=--enable-libquicktime
LIB_DEPENDS+=	quicktime::multimedia/libquicktime
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

.include <bsd.port.mk>
