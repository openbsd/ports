# $OpenBSD: Makefile,v 1.1.1.1 2005/01/25 21:58:59 naddy Exp $

COMMENT=		"video stream processing tools"

DISTNAME=		transcode-0.6.14
CATEGORIES=		multimedia

HOMEPAGE=		http://www.transcoding.org/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xpm Xt Xv c freetype \
			m pthread stdc++ usbhid z

MASTER_SITES=		http://www.jakemsr.com/transcode/ \
			http://dl.fkb.wormulon.net/transcode/

FLAVORS=		lzo mjpegtools quicktime
FLAVOR?=

BUILD_DEPENDS+=		::devel/pkgconfig

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=		::devel/nasm
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif

LIB_DEPENDS=    	SDL.2::devel/sdl \
			a52.0::audio/liba52 \
			avcodec.4.9::graphics/ffmpeg \
			dv.4::multimedia/libdv \
			dvdread.3::devel/libdvdread \
			iconv.4::converters/libiconv \
			jpeg.62::graphics/jpeg \
			mp3lame.0::audio/lame \
			ogg.5::audio/libogg \
			vorbis.3,vorbisfile.4::audio/libvorbis \
			xml2.8::textproc/libxml

RUN_DEPENDS=		::graphics/ffmpeg \
			::audio/sox \
			::audio/vorbis-tools \
			::audio/toolame \
			::multimedia/xvidcore \
			::x11/mplayer

SEPARATE_BUILD=		concurrent

SHARED_ONLY=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-a52 \
			--enable-a52-default-decoder \
			--enable-bktr \
			--enable-libdv \
			--enable-libxml2 \
			--enable-ogg \
			--enable-sdl \
			--enable-sunau \
			--enable-vorbis \
			--enable-ffbin \
			--disable-3dnow \
			--disable-sse \
			--disable-sse2 \
			--disable-cmov \
			--disable-altivec

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=	--enable-lzo
LIB_DEPENDS+=		lzo.1::archivers/lzo
PKG_ARGS+=		-Dlzo=1
.else
PKG_ARGS+=		-Dlzo=0
.endif

.if ${FLAVOR:L:Mmjpegtools}
CONFIGURE_ARGS+=	--enable-mjpegtools
BUILD_DEPENDS+=		::multimedia/mjpegtools
RUN_DEPENDS+=		::multimedia/mjpegtools
PKG_ARGS+=		-Dmjpegtools=1
.else
PKG_ARGS+=		-Dmjpegtools=0
.endif

.if ${FLAVOR:L:Mquicktime}
CONFIGURE_ARGS+=	--enable-libquicktime
LIB_DEPENDS+=		quicktime.0::multimedia/libquicktime
WANTLIB+=		png
PKG_ARGS+=		-Dquicktime=1
.else
PKG_ARGS+=		-Dquicktime=0
.endif

NO_REGRESS=		Yes

.include <bsd.port.mk>
