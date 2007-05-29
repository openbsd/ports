# $OpenBSD: Makefile,v 1.16 2007/05/29 23:06:58 ajacoutot Exp $

COMMENT=		"video stream processing tools"

DISTNAME=		transcode-1.0.3rc2
PKGNAME=		${DISTNAME}p1
CATEGORIES=		multimedia

HOMEPAGE=		http://www.transcoding.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xi Xpm Xt Xv \
			c freetype m pthread usbhid z glib gmodule intl

MASTER_SITES=		http://fromani.exit1.org/

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
			avcodec.>=7::graphics/ffmpeg \
			dv.>=4::multimedia/libdv \
			dvdread.>=3::devel/libdvdread \
			gdk.>=1.2,gtk.>=1.2::x11/gtk+ \
			iconv.>=4::converters/libiconv \
			jpeg.>=62::graphics/jpeg \
			mp3lame::audio/lame \
			mpeg2,mpeg2convert::graphics/libmpeg2 \
			ogg.>=5::audio/libogg \
			postproc.>=6::graphics/ffmpeg \
			theora.>=1::multimedia/libtheora \
			vorbis.>=3,vorbisfile.>=4::audio/libvorbis \
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
SHARED_ONLY=		Yes
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
WANTLIB+=		png
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
