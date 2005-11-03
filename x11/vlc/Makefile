# $OpenBSD: Makefile,v 1.23 2005/11/03 19:50:06 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	"videolan client; multimedia player"
V=		0.8.2
DISTNAME=	vlc-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://download.videolan.org/pub/videolan/vlc/${V}/

HOMEPAGE=	http://www.videolan.org/vlc/

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

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
		theora.1::multimedia/libtheora \
		xml2.9::textproc/libxml

WANTLIB=	X11 Xext Xft Xinerama Xrender Xv c fontconfig freetype m \
		ncurses ossaudio pthread usbhid z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 mp3lame pango-1.0.0.0 pangox-1.0.0.0 \
		pangoxft-1.0.0.0

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS="-lpostproc -lmp3lame -la52 -lvorbisenc -lvorbis -logg -lossaudio -lm -lz -pthread `${LOCALBASE}/bin/pkg-config gtk+-2.0 gthread-2.0 --libs`" \
		WXCONFIG="${LOCALBASE}/bin/wxgtk2-2.4-config" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng `${LOCALBASE}/bin/pkg-config gtk+-2.0 --cflags`"

# utf8, 
CONFIGURE_ARGS+=--disable-pth \
		--disable-st \
		--disable-gprof \
		--disable-cprof \
		--disable-mostly-builtin \
		--disable-debug \
		--disable-release \
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
		--disable-altivec \
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
		--disable-flac \
		--disable-speex \
		--disable-cmml \
		--disable-xosd

CONFIGURE_ARGS+=--enable-pda \
		--enable-ncurses \
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
		--enable-daap \
		--enable-faad \
		--enable-theora \
		--enable-wxwindows

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

FLAVORS=	no_dvd
FLAVOR?=

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Dx86opt=1
.else
PKG_ARGS+=-Dx86opt=0
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

pre-build:
	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/modules/gui/pda/pda.c

.include <bsd.port.mk>
