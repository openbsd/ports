# $OpenBSD: Makefile,v 1.16 2004/10/05 20:49:08 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"videolan client; multimedia player"

V=		0.7.2
DISTNAME=	vlc-${V}
CATEGORIES=	x11
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/${V}/ \
		http://www.fr.videolan.org/pub/videolan/vlc/${V}/

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	SDL::devel/sdl \
		gtk.1.2,gdk.1.2::x11/gtk+ \
		glib,gthread::devel/glib \
		png::graphics/png \
		id3tag.2::audio/libid3tag \
		mad.2::audio/libmad \
		ogg::audio/libogg \
		vorbis,vorbisenc::audio/libvorbis \
		mpeg2::graphics/libmpeg2 \
		avcodec::graphics/ffmpeg \
		fribidi::devel/fribidi \
		faad::audio/faad

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-logg" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS+=--disable-altivec \
		--disable-oss \
		--enable-sdl \
		--enable-mad \
		--disable-optimizations \
		--disable-dvd \
		--disable-dvdnav \
		--disable-dvbpsi \
		--disable-vcd \
		--disable-mod \
		--disable-mkv \
		--disable-dts \
		--disable-wxwindows \
		--disable-cddax \
		--disable-skins2 \
		--disable-speex \
		--enable-faad \
		--disable-dvbpsi \
		--disable-v4l \
		--disable-pvr \
		--disable-fb \
		--disable-qnx \
		--disable-slp

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
CONFIGURE_ARGS+=--disable-a52 --disable-dvdplay --disable-dvdread
.else
CONFIGURE_ARGS+=--enable-a52 --enable-dvdplay --enable-dvdread
LIB_DEPENDS+=	a52::audio/liba52 \
		dvdplay::devel/libdvdplay \
		dvdread::devel/libdvdread
.endif

.include <bsd.port.mk>
