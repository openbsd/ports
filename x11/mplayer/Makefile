# $OpenBSD: Makefile,v 1.48 2003/02/18 16:40:38 brad Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		i386 macppc sparc64

COMMENT=		"Movie player supporting MPEG, DivX, AVI, ASF, MOV & more"

DISTNAME=		MPlayer-0.90rc4
DIST_SUBDIR=		mplayer
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.mplayerhq.hu

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mplayerhq.hu/MPlayer/releases/
MASTER_SITES+=		http://www.mplayerhq.hu/MPlayer/releases/
MASTER_SITES+=		http://ftp.lug.udel.edu/MPlayer/releases/
MASTER_SITES0=		http://www2.mplayerhq.hu/MPlayer/Skin/

MAINTAINER=     Bjorn Sandell <biorn@dce.chalmers.se>

SKIN=		default
SKINVER=	1.7
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SKIN}-${SKINVER}${EXTRACT_SUFX}:0

.include <bsd.own.mk>

.if ${ELF_TOOLCHAIN:L} == "no"
BUILD_DEPENDS=	:binutils->=2.11.2:devel/binutils/stable
MAKE_ENV=	AR=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/ar
CONFIGURE_ARGS+=--as=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as
.endif
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		mp3lame::audio/lame \
		ungif,gif::graphics/libungif \
		vorbis.0,vorbisfile.1::audio/libvorbis

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--disable-alsa \
		--disable-ossaudio \
		--disable-arts \
		--disable-nas \
		--enable-select \
		--enable-vidix \
		--enable-vorbis \
		--enable-menu \
		--with-extraincdir=${LOCALBASE}/include/libpng:${LOCALBASE}/include \
		--with-extralibdir=${LOCALBASE}/lib \
		--confdir=${LOCALBASE}/share/mplayer

.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--target=ppc-openbsd
.endif

FLAVORS=	sdl ggi debug mad win32 iconv no_x11 cdda faad aa lzo
FLAVOR?=

.if ${FLAVOR:L:Mfaad}
CONFIGURE_ARGS+=--enable-faad
LIB_DEPENDS+=   faad::audio/faad
.else
CONFIGURE_ARGS+=--disable-faad
.endif

.if ${FLAVOR:L:Mlzo}
CONFIGURE_ARGS+=--enable-liblzo
LIB_DEPENDS+=lzo::archivers/lzo
.else
CONFIGURE_ARGS+=--disable-liblzo
.endif

.if ${FLAVOR:L:Mno_x11}
.  if ${FLAVOR:L:Msdl} || ${FLAVOR:L:Mggi} || ${FLAVOR:L:Mmad}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-gui \
	--disable-gl \
	--disable-xv \
	--disable-x11 \
	--disable-sunaudio
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
LIB_DEPENDS+=	SDL:sdl-1.2.4p1,>=1.2.5:devel/sdl
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

RUN_DEPENDS+=	:win32-codecs-*:graphics/win32-codecs
BUILD_DEPENDS+=	${RUN_DEPENDS}
CONFIGURE_ARGS+=--with-win32libdir=${LOCALBASE}/lib/win32 \
		--enable-qtx-codecs
.else
CONFIGURE_ARGS+=--disable-win32 \
		--disable-qtx-codecs
.endif

.if ${FLAVOR:L:Mcdda}
CONFIGURE_ARGS+=--enable-cdparanoia
BUILD_DEPENDS+= cdda_paranoia,cdda_interface:cdparanoia->=3.a9.8:audio/cdparanoia
.else
CONFIGURE_ARGS+=--disable-cdparanoia
.endif

.if ${FLAVOR:L:Maa}
CONFIGURE_ARGS+=--enable-aa
LIB_DEPENDS+=  aa.1.3::graphics/aalib
.else
CONFIGURE_ARGS+=--disable-aa
.endif

.if ${ELF_TOOLCHAIN:L} == "no"
post-patch:
	@ln -s ${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as ${WRKDIR}/bin/as
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/Skin/${SKIN}
	${INSTALL_DATA} ${WRKDIR}/${SKIN}/* ${PREFIX}/share/mplayer/Skin/${SKIN}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf \
			${PREFIX}/share/mplayer
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mplayer
	${INSTALL_DATA} ${WRKDIST}/DOCS/*.html ${PREFIX}/share/doc/mplayer

.include <bsd.port.mk>
