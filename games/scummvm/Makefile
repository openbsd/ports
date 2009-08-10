# $OpenBSD: Makefile,v 1.31 2009/08/10 06:31:42 kili Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=		gcc bug
.endif

COMMENT=	graphical adventure game interpreter
DISTNAME=	scummvm-0.13.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs stdc++ usbhid xcb z

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	::devel/nasm
.endif

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	SDL::devel/sdl \
		mad.>=2::audio/libmad \
		mpeg2::graphics/libmpeg2 \
		FLAC.>=5::audio/flac

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-alsa --disable-debug --enable-made --enable-tinsel
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--enable-tremor --disable-vorbis
LIB_DEPENDS+=	vorbisidec.>=1::audio/tremor
.else
LIB_DEPENDS+=	vorbis.>=0,vorbisfile.>=1::audio/libvorbis
WANTLIB+=	ogg
.endif

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}"

# XXX gcc3 compiling compact.cpp with -O2 gobbles 800MB
# ICE on sparc with >= -O1
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "sparc"
CXXFLAGS+=	-O0
.endif

# prevent ICE
.if ${MACHINE_ARCH} == "arm"
CXXFLAGS+=	-O1
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons
	${INSTALL_DATA_DIR} ${PREFIX}/share/scummvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/{NEWS,AUTHORS,README} \
	    ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA} ${WRKSRC}/icons/scummvm.{svg,xpm} ${PREFIX}/share/icons
	${INSTALL_MAN} ${WRKSRC}/dists/scummvm.6 ${PREFIX}/man/man6
	${INSTALL_DATA} ${WRKSRC}/gui/themes/{scummmodern,scummclassic}.zip \
	    ${PREFIX}/share/scummvm
	${INSTALL_DATA} ${WRKSRC}/dists/scummvm.desktop \
	    ${PREFIX}/share/applications
	${INSTALL_PROGRAM} ${WRKSRC}/scummvm ${PREFIX}/bin

.include <bsd.port.mk>
