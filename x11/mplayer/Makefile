# $OpenBSD: Makefile,v 1.5 2002/05/10 19:40:09 pvalchev Exp $

# XXX might not be hard to add more (macppc at least)
ONLY_FOR_ARCHS=		i386

COMMENT=		"Movie player"
DISTNAME=		MPlayer-0.90pre3
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11
NEED_VERSION=		1.527
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.mplayerhq.hu

PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	"patents"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mplayerhq.hu/MPlayer/releases/
#MASTER_SITES0=		http://www2.mplayerhq.hu/MPlayer/Skin/
MASTER_SITES0=		http://www.sightly.net/mplayer/

SKIN=		default
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SKIN}${EXTRACT_SUFX}:0

BUILD_DEPENDS=	::devel/binutils/stable
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		gtk,gdk::x11/gtk+

MAKE_ENV=	AR=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/ar

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--as=${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as \
		--disable-alsa \
		--disable-vorbis \
		--disable-aa \
		--enable-select \
		--enable-gl \
		--enable-gui \
		--with-extraincdir="${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		--with-extralibdir=${LOCALBASE}/lib

# Optimizations
CONFIGURE_ARGS+= --enable-mmx --disable-sse --disable-sse2

FLAVORS=	sdl ggi debug mad oss win32 dvd
FLAVOR?=

.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS+=--enable-sdl \
		--with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS+=	SDL:sdl>=1.2.4p1:devel/sdl
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

.if ${FLAVOR:L:Moss}
CONFIGURE_ARGS+=--enable-ossaudio
.else
CONFIGURE_ARGS+=--disable-ossaudio
.endif

.if ${FLAVOR:L:Mwin32}
RUN_DEPENDS+=	win32/divx.dll::graphics/win32-codecs
BUILD_DEPENDS+=	${RUN_DEPENDS}
CONFIGURE_ARGS+=--with-win32libdir=${LOCALBASE}/lib/win32
.else
CONFIGURE_ARGS+=--disable-win32
.endif

.if ${FLAVOR:L:Mdvd}
LIB_DEPENDS+=	dvdread.::devel/libdvdread
.else
CONFIGURE_ARGS+=--disable-dvdread
.endif

post-patch:
	@ln -s ${LOCALBASE}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin/as ${WRKDIR}/bin/as

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/Skin/${SKIN}
	${INSTALL_DATA} ${WRKDIR}/${SKIN}/* ${PREFIX}/share/mplayer/Skin/${SKIN}/

.include <bsd.port.mk>
