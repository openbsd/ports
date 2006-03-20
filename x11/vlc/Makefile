# $OpenBSD: Makefile,v 1.33 2006/03/20 05:53:18 jakemsr Exp $

SHARED_ONLY=	Yes

COMMENT=	"videolan client; multimedia player"
V=		0.8.4a
DISTNAME=	vlc-${V}
PKGNAME=	${DISTNAME}p4
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/

HOMEPAGE=	http://www.videolan.org/vlc/

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig	

LIB_DEPENDS=	SDL_image.1.3::devel/sdl-image \
		png.4.1::graphics/png \
		id3tag.3.0::audio/libid3tag \
		mad.2.1::audio/libmad \
		ogg.5.2::audio/libogg \
		vorbis.3.0,vorbisenc.2.0::audio/libvorbis \
		mpeg2.0.0::graphics/libmpeg2 \
		avcodec.7.0,avformat.7.0,postproc.7.0,avutil.1.0::graphics/ffmpeg \
		fribidi.0.0::devel/fribidi \
		faad.0.0::audio/faad \
		a52.0.0::audio/liba52 \
		theora.1::multimedia/libtheora \
		xml2.9::textproc/libxml \
		FLAC.7.0::audio/flac

WANTLIB=	X11 Xext Xinerama Xv c freetype m ncurses ossaudio \
		pthread usbhid z \
		SDL jpeg

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

CONFIGURE_ARGS+=--disable-pth \
		--disable-st \
		--disable-gprof \
		--disable-cprof \
		--disable-mostly-builtin \
		--disable-debug \
		--disable-release \
		--without-contrib \
		--disable-livedotcom \
		--disable-v4l \
		--disable-pvr \
		--disable-vcdx \
		--disable-cddax \
		--disable-satellite \
		--disable-dvb \
		--disable-twolame \
		--disable-tremor \
		--disable-tarkin \
		--disable-dirac \
		--disable-svg \
		--disable-qte \
		--disable-mga \
		--disable-svgalib \
		--disable-ggi \
		--disable-glide \
		--disable-aa \
		--disable-caca \
		--disable-esd \
		--disable-portaudio \
		--disable-arts \
		--disable-opie \
		--disable-galaktos \
		--disable-goom \
		--disable-slp \
		--disable-lirc \
		--disable-corba \
		--disable-mozilla \
		--disable-testsuite \
		--disable-hal \
		--disable-optimizations \
		--disable-gnutls \
		--disable-dshow \
		--disable-smb \
		--disable-dvbpsi \
		--disable-libcdio \
		--disable-libcddb \
		--disable-cdda \
		--disable-vcd \
		--disable-mkv \
		--disable-quicktime \
		--disable-dts \
		--disable-x264 \
		--disable-glx \
		--disable-opengl \
		--disable-hd1000v \
		--disable-directx \
		--disable-fb \
		--disable-wingdi \
		--disable-alsa \
		--disable-waveout \
		--disable-coreaudio \
		--disable-hd1000a \
		--disable-macosx \
		--disable-qnx \
		--disable-visual \
		--disable-joystick \
		--disable-activex \
		--disable-oss \
		--disable-skins2 \
		--disable-mod \
		--disable-speex \
		--disable-cmml \
		--disable-shout \
		--disable-gnomevfs \
		--disable-mpc \
		--disable-real \
		--disable-realrtsp \
		--disable-cyberlink \
		--disable-bonjour \
		--disable-daap \
		--disable-pda \
		--disable-wxwidgets \
		--disable-xosd

CONFIGURE_ARGS+=--enable-ncurses \
		--enable-sout \
		--enable-httpd \
		--enable-vlm \
		--enable-screen \
		--enable-ogg \
		--enable-mad \
		--enable-ffmpeg \
		--enable-a52 \
		--enable-libmpeg2 \
		--enable-vorbis \
		--enable-png \
		--enable-x11 \
		--enable-xvideo \
		--enable-sdl \
		--enable-freetype \
		--enable-fribidi \
		--enable-libxml2 \
		--enable-faad \
		--enable-theora \
		--enable-flac

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

FLAVORS=	no_dvd
FLAVOR?=

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Dx86opt=1
.else
PKG_ARGS+=-Dx86opt=0
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--enable-loader
PKG_ARGS+=-Dwin32=1
.else
CONFIGURE_ARGS+=--disable-loader
PKG_ARGS+=-Dwin32=0
.endif

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=--enable-altivec
PKG_ARGS+=-Daltivec=1
.else
CONFIGURE_ARGS+=--disable-altivec
PKG_ARGS+=-Daltivec=0
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

# win32 codecs support uses i386_set_ldt
post-configure:
.if ${MACHINE_ARCH} == "i386"
	@perl -pi -e s,'VLC_ENTRY = vlc_entry__0_8_4','VLC_ENTRY = vlc_entry__0_8_4 -li386',g \
	${WRKSRC}/modules/codec/Makefile ${WRKSRC}/modules/codec/dmo/Makefile
.endif

# this was used for the pda interface which is disabled now, it may be
# re-renabled when it is more usable so leave this here
#pre-build:
#	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/modules/gui/pda/pda.c

.include <bsd.port.mk>
