# $OpenBSD: Makefile,v 1.7 2003/10/18 01:13:17 jolan Exp $

COMMENT=	"videolan client; multimedia player"

VER=		0.6.2
DISTNAME=	vlc-${VER}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/${VER}/ \
		http://www.fr.videolan.org/pub/videolan/vlc/${VER}/

HOMEPAGE=	http://www.videolan.org/vlc/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

MODULES=	gettext

LIB_DEPENDS=	SDL::devel/sdl \
		gtk.1.2,gdk.1.2::x11/gtk+ \
		glib,gthread::devel/glib \
		png::graphics/png \
		mad.1,id3tag.1::audio/mad \
		ogg::audio/libogg \
		vorbis,vorbisenc::audio/libvorbis \
		dvbpsi.1.1::graphics/libdvbpsi \
		mpeg2::graphics/libmpeg2 \
		avcodec::graphics/ffmpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS+=--disable-oss \
		--enable-sdl \
		--enable-mad \
		--disable-optimizations \
		--disable-vcd \
		--disable-dvd

FLAVORS=	no_dvd
FLAVOR?=

.if ${MACHINE_ARCH} == "i386"
SED_PLIST+=	|sed -e '/^IF${MACHINE_ARCH}:/s///'
.else
SED_PLIST+=	|sed -e '/^IFi386:/d'
.endif

.if ${MACHINE_ARCH} == "powerpc"
SED_PLIST+=	|sed -e '/^IF${MACHINE_ARCH}:/s///'
.else
SED_PLIST+=	|sed -e '/^IFpowerpc:/d'
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
