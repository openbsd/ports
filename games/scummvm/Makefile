# $OpenBSD: Makefile,v 1.42 2010/11/16 11:23:28 espie Exp $

BROKEN-hppa=	gcc bug

COMMENT=	graphical adventure game interpreter
DISTNAME=	scummvm-1.2.0
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext c m pthread pthread-stubs stdc++ usbhid xcb z \
		SDL mad>=2 FLAC>=5

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/nasm
.endif

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl \
		audio/libmad \
		audio/flac

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-alsa --disable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS +=	--enable-tremor --disable-vorbis
LIB_DEPENDS +=		audio/tremor
WANTLIB +=		vorbisidec>=1
.else
LIB_DEPENDS +=		audio/libvorbis
WANTLIB +=		ogg vorbis>=0 vorbisfile>=1
.endif

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}"

# XXX gcc3 compiling compact.cpp with -O2 gobbles 800MB
# ICE on sparc with >= -O1
.if ${MACHINE_ARCH} == "sparc"
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
	${INSTALL_DATA} ${WRKSRC}/gui/themes/translations.dat \
	    ${PREFIX}/share/scummvm
	${INSTALL_DATA} ${WRKSRC}/dists/scummvm.desktop \
	    ${PREFIX}/share/applications
	${INSTALL_PROGRAM} ${WRKSRC}/scummvm ${PREFIX}/bin

.include <bsd.port.mk>
