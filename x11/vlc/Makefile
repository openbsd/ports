# $OpenBSD: Makefile,v 1.21 2005/07/09 00:36:43 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	"videolan client; multimedia player"
V=		0.8.1
DISTNAME=	vlc-${V}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/

HOMEPAGE=	http://www.videolan.org/vlc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WANTLIB=	GL GLU X11 Xext Xinerama Xv c freetype m mp3lame \
		ossaudio pthread usbhid z

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig	

LIB_DEPENDS=	SDL.3.0::devel/sdl \
		wx_gtk2.2.4:wxWidgets-gtk-*-gtk2:x11/wxWidgets/gtk2 \
		png.4.1::graphics/png \
		id3tag.3.0::audio/libid3tag \
		mad.2.1::audio/libmad \
		ogg.5.2::audio/libogg \
		vorbis.3.0,vorbisenc.2.0::audio/libvorbis \
		mpeg2.0.0::graphics/libmpeg2 \
		avcodec.5.0,avformat.5.0,postproc.5.0::graphics/ffmpeg \
		fribidi.0.0::devel/fribidi \
		faad.0.0::audio/faad \
		a52.0.0::audio/liba52 \
		theora.1::multimedia/libtheora

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lpostproc -lmp3lame -la52 -lvorbisenc -lvorbis -logg -lossaudio -lm -lz -pthread" \
		WXCONFIG="${LOCALBASE}/bin/wxgtk2-2.4-config" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS+=--disable-altivec \
		--disable-oss \
		--enable-sdl \
		--enable-mad \
		--disable-optimizations \
		--disable-dvbpsi \
		--disable-vcd \
		--disable-mod \
		--disable-mkv \
		--disable-dts \
		--disable-cddax \
		--disable-skins2 \
		--disable-speex \
		--disable-x264 \
		--enable-faad \
		--disable-dvbpsi \
		--disable-v4l \
		--disable-pvr \
		--disable-fb \
		--disable-qnx \
		--disable-slp \
		--enable-a52 \
		--enable-theora

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

FLAVORS=	no_dvd
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

# XXX video window initialization fails without this
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=-mhard-quad-float
.endif

.if ${FLAVOR:L:Mno_dvd}
CONFIGURE_ARGS+=--disable-dvdread --disable-dvdnav
.else
CONFIGURE_ARGS+=--enable-dvdread --enable-dvdnav
LIB_DEPENDS+=	dvdnav.3.0::multimedia/libdvdnav \
		dvdread.3.0::devel/libdvdread
.endif

.include <bsd.port.mk>
