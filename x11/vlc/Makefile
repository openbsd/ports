# $OpenBSD: Makefile,v 1.2 2003/08/02 10:29:28 jolan Exp $

# exits immediately (?)
NOT_FOR_ARCHS=	powerpc

COMMENT=	"videolan client; multimedia player"

VER=		0.6.1
DISTNAME=	vlc-${VER}
CATEGORIES=	x11
MASTER_SITES=	http://www.videolan.org/pub/videolan/vlc/${VER}/

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
		mad.1,id3tag.1::audio/mad \
		ogg::audio/libogg \
		vorbis::audio/libvorbis \
		mpeg2::graphics/libmpeg2 \
		avcodec::graphics/ffmpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-oss \
		--enable-sdl \
		--disable-dvbpsi \
		--enable-mad \
		--disable-optimizations \
		--disable-vcd \
		--disable-dvd

FLAVORS=	i386 powerpc no_dvd
FLAVOR?=

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
FLAVOR+=${MACHINE_ARCH}
.endif

.if ${FLAVOR:L:Mno_dvd}
CONFIGURE_ARGS+=--disable-a52 --disable-dvdplay --disable-dvdread
.else
CONFIGURE_ARGS+=--enable-a52 --enable-dvdplay --enable-dvdread
BUILD_DEPENDS+=	::audio/liba52
LIB_DEPENDS+=	dvdplay::devel/libdvdplay \
		dvdread::devel/libdvdread
.endif

.include <bsd.port.mk>
