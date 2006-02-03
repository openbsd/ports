# $OpenBSD: Makefile,v 1.7 2006/02/03 05:25:21 jakemsr Exp $

COMMENT=		"video stream processing tools"

DISTNAME=		transcode-1.0.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia

HOMEPAGE=		http://www.transcoding.org/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xi Xpm Xt Xv c freetype \
			m pthread usbhid vorbisenc z \
			glib gmodule intl

MASTER_SITES=		http://www.jakemsr.com/transcode/ \
			http://kraymer.de/mirroring/

FLAVORS=		lzo mjpegtools quicktime
FLAVOR?=

BUILD_DEPENDS+=		::devel/pkgconfig

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=		-Di386=1
.else
PKG_ARGS+=		-Di386=0
.endif
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-*
.endif

LIB_DEPENDS=		SDL.2::devel/sdl \
			a52.0::audio/liba52 \
			avcodec.6::graphics/ffmpeg \
			dv.4::multimedia/libdv \
			dvdread.3::devel/libdvdread \
			gdk.1.2,gtk.1.2::x11/gtk+ \
			iconv.4::converters/libiconv \
			jpeg.62::graphics/jpeg \
			mp3lame.0::audio/lame \
			mpeg2.0,mpeg2convert.0::graphics/libmpeg2 \
			ogg.5::audio/libogg \
			postproc.6::graphics/ffmpeg \
			theora.1::multimedia/libtheora \
			vorbis.3,vorbisfile.4::audio/libvorbis \
			xml2.8::textproc/libxml

RUN_DEPENDS=		::graphics/ffmpeg \
			::audio/sox \
			::audio/vorbis-tools \
			::audio/toolame \
			::multimedia/xvidcore \
			::x11/mplayer

SEPARATE_BUILD=		concurrent

USE_LIBTOOL=		Yes
SHARED_ONLY=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBAVCODEC_EXTRA_LIBS="-lmp3lame -la52 -lvorbisenc -lvorbis -logg"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-netstream \
			--enable-statbuffer \
			--enable-a52 \
			--enable-a52-default-decoder \
			--enable-bktr \
			--enable-freetype2 \
			--enable-gtk \
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
			--with-libpostproc-includes="${LOCALBASE}/include/postproc"

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=	--enable-lzo
LIB_DEPENDS+=		lzo.1::archivers/lzo
PKG_ARGS+=		-Dlzo=1
.else
PKG_ARGS+=		-Dlzo=0
.endif

.if ${FLAVOR:L:Mmjpegtools}
CONFIGURE_ARGS+=	--enable-mjpegtools
LIB_DEPENDS+=		mjpegutils.3::multimedia/mjpegtools
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

.include <bsd.port.mk>
