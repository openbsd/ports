# $OpenBSD: Makefile,v 1.34 2002/10/28 17:56:08 espie Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		i386 macppc sparc64

COMMENT=		"Movie player"
DISTNAME=		MPlayer-0.90pre9
DIST_SUBDIR=		mplayer
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.mplayerhq.hu

PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	"patents"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mplayerhq.hu/MPlayer/releases/
MASTER_SITES+=		http://www.mplayerhq.hu/MPlayer/releases/
#MASTER_SITES0=		http://www2.mplayerhq.hu/MPlayer/Skin/
MASTER_SITES0=		http://www.sightly.net/mplayer/

MAINTAINER=     Björn Sandell <biorn@dce.chalmers.se>

SKIN=		default
SKINVER=	1.1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SKIN}-${SKINVER}${EXTRACT_SUFX}:0

.include <bsd.own.mk>

.if ${ELF_TOOLCHAIN} == "no"
BUILD_DEPENDS=	:binutils->=2.11.2:devel/binutils/stable
.endif
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		mp3lame::audio/lame \
		ungif,gif::graphics/libungif \
		vorbis.0,vorbisfile.1::audio/libvorbis

.if ${ELF_TOOLCHAIN} == "no"
MAKE_ENV=	AR=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/ar
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--as=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as \
		--disable-alsa \
		--disable-aa \
		--disable-ossaudio \
		--disable-arts \
		--disable-dvdnav \
		--enable-select \
		--enable-vidix \
		--enable-vorbis \
		--with-extraincdir=${LOCALBASE}/include/libpng:${LOCALBASE}/include \
		--with-extralibdir=${LOCALBASE}/lib \
		--confdir=${LOCALBASE}/share/mplayer

.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--target=ppc-openbsd
.endif

FLAVORS=	sdl ggi debug mad win32 iconv no_x11 cdda
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
.  if ${FLAVOR:L:Msdl} || ${FLAVOR:L:Mggi} || ${FLAVOR:L:Mmad}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-gui \
	--disable-gl \
	--disable-xv \
	--disable-x11 \
	--disable-sunaudio
PLIST=pkg/PLIST-no_x11
.  endif
.else
CONFIGURE_ARGS+=--enable-gui \
	--enable-gl
USE_X11=	Yes
LIB_DEPENDS+= 	gtk,gdk::x11/gtk+
.endif
.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS+=--enable-sdl \
		--with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS+=	SDL:sdl-1.2.4p1,>=1.2.5-*:devel/sdl
.else
CONFIGURE_ARGS+=--disable-sdl
.endif

.if ${FLAVOR:L:Mggi}
CONFIGURE_ARGS+=--enable-ggi
LIB_DEPENDS+=	ggi::graphics/ggi
.else
CONFIGURE_ARGS+=--disable-ggi
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug=3
.endif

.if ${FLAVOR:L:Mmad}
CONFIGURE_ARGS+=--enable-mad
LIB_DEPENDS+=	mad::audio/mad
.else
CONFIGURE_ARGS+=--disable-mad
.endif

.if ${FLAVOR:L:Miconv}
CONFIGURE_ARGS+=--enable-iconv
LIB_DEPENDS+=	iconv::converters/libiconv
.else
CONFIGURE_ARGS+=--disable-iconv
.endif

.if ${FLAVOR:L:Mwin32}
ONLY_FOR_ARCHS=i386

.  if !defined(NO_WARNINGS)
pre-fetch:
	@echo
	@echo "  WARNING: This application requires a kernel compiled with"
	@echo "           'option USER_LDT' for proper operation. The GENERIC"
	@echo "           kernel does not have this option enabled by default."
	@echo
.  endif

RUN_DEPENDS+=	win32/divx.dll:win32-codecs-*:graphics/win32-codecs
BUILD_DEPENDS+=	${RUN_DEPENDS}
CONFIGURE_ARGS+=--with-win32libdir=${LOCALBASE}/lib/win32
.else
CONFIGURE_ARGS+=--disable-win32
.endif

.if ${FLAVOR:L:Mcdda}
CONFIGURE_ARGS+=--enable-cdparanoia
BUILD_DEPENDS+= cdda_paranoia,cdda_interface:cdparanoia->=3.a9.8:audio/cdparanoia
.else
CONFIGURE_ARGS+=--disable-cdparanoia
.endif

.if ${ELF_TOOLCHAIN} == "no"
post-patch:
	@ln -s ${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as ${WRKDIR}/bin/as
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/Skin/${SKIN}
	${INSTALL_DATA} ${WRKDIR}/${SKIN}/* ${PREFIX}/share/mplayer/Skin/${SKIN}/

.include <bsd.port.mk>
