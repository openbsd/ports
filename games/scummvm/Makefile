# $OpenBSD: Makefile,v 1.20 2006/02/07 23:20:39 jsg Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=		"gcc bug"
.endif

COMMENT=	"graphical adventure game interpreter"
DISTNAME=	scummvm-0.8.2
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread stdc++ usbhid z

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	::devel/nasm
.endif

LIB_DEPENDS=	SDL::devel/sdl \
		mad.2::audio/libmad \
		mpeg2::graphics/libmpeg2 \
		FLAC.5::audio/flac

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-alsa --disable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--enable-tremor --disable-vorbis
LIB_DEPENDS+=	vorbisidec.1::audio/tremor
.else
LIB_DEPENDS+=	vorbis.0,vorbisfile.1::audio/libvorbis
WANTLIB+=	ogg
.endif

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}"

# XXX gcc3 compiling compact.cpp with -O2 gobbles 800MB
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "sparc"
CXXFLAGS+=	-O0
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/{NEWS,AUTHORS,README} ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA} ${WRKSRC}/scummvm.xpm ${PREFIX}/share/pixmaps
	${INSTALL_MAN} ${WRKSRC}/scummvm.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKSRC}/scummvm ${PREFIX}/bin

.include <bsd.port.mk>
