# $OpenBSD: Makefile,v 1.76 2004/12/19 12:56:26 alek Exp $

# May not be hard to add more.
ONLY_FOR_ARCHS=		amd64 i386 powerpc sparc64

COMMENT=		"Movie player supporting MPEG, DivX, AVI, ASF, MOV & more"

DISTNAME=		MPlayer-1.0pre5
DIST_SUBDIR=		mplayer
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.mplayerhq.hu/

# GPL
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c freetype m ogg pthread stdc++ termcap util z 

MASTER_SITES=		http://www2.mplayerhq.hu/MPlayer/releases/
MASTER_SITES+=		http://www.mplayerhq.hu/MPlayer/releases/
MASTER_SITES+=		http://ftp.lug.udel.edu/MPlayer/releases/
# The skins tarball changes on a daily basis so it is mirrored
# locally, do NOT change this.
#MASTER_SITES0=		http://www2.mplayerhq.hu/MPlayer/Skin/
MASTER_SITES0=		http://www.sightly.net/mplayer/

MAINTAINER=     Bjorn Sandell <biorn@dce.chalmers.se>

SKIN=		default
SKINVER=	1.7
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${SKIN}-${SKINVER}${EXTRACT_SUFX}:0

.include <bsd.own.mk>

MODULES= converters/libiconv

LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		mp3lame::audio/lame \
		ungif,gif::graphics/libungif \
		vorbis.0,vorbisfile.1::audio/libvorbis \
		cdda_paranoia,cdda_interface:cdparanoia->=3.a9.8:audio/cdparanoia

CONFDIR=	${SYSCONFDIR}/mplayer
SUBST_VARS=	CONFDIR

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--disable-alsa \
		--disable-ossaudio \
		--disable-nas \
		--disable-liblzo \
		--disable-caca \
		--disable-vidix \
		--enable-select \
		--enable-vorbis \
		--enable-menu \
		--enable-iconv \
		--enable-cdparanoia \
		--with-extraincdir=${LOCALBASE}/include/libpng:${LOCALBASE}/include \
		--with-extralibdir=${LOCALBASE}/lib \
		--confdir=${CONFDIR}
CONFIGURE_ENV+=	TMPDIR="${WRKBUILD}"

.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--enable-runtime-cpudetection
.endif

.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ARGS+=--disable-altivec
.endif

FLAVORS=	arts esd sdl ggi debug mad no_x11 aa
FLAVOR?=

.if ${FLAVOR:L:Marts}
CONFIGURE_ARGS+=--enable-arts
LIB_DEPENDS+=	artsc::x11/kde/arts3
WANTLIB+=	glib-2.0.0.0 gmodule-2.0.0.0 gthread-2.0.0.0
.else
CONFIGURE_ARGS+=--disable-arts
.endif

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+=--enable-esd
LIB_DEPENDS+=	esd::audio/esound
WANTLIB+=	audiofile
.else
CONFIGURE_ARGS+=--disable-esd
.endif

.if ${FLAVOR:L:Mno_x11}
.  if ${FLAVOR:L:Msdl} || ${FLAVOR:L:Mggi} || ${FLAVOR:L:Mmad}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-gui \
		--disable-gl \
		--disable-xv \
		--disable-x11
.  endif
.else
CONFIGURE_ARGS+=--enable-gui \
		--enable-gl
USE_X11=	Yes
LIB_DEPENDS+= 	gtk,gdk::x11/gtk+
WANTLIB+=	GL X11 Xext Xi Xinerama Xv Xxf86dga Xxf86vm glib gmodule intl 
.endif

.if ${FLAVOR:L:Msdl}
CONFIGURE_ARGS+=--enable-sdl \
		--with-sdl-config=${LOCALBASE}/bin/sdl-config
LIB_DEPENDS+=	SDL:sdl-1.2.4p1,>=1.2.5:devel/sdl
WANTLIB+=	usbhid 
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
LIB_DEPENDS+=	mad.2::audio/libmad
.else
CONFIGURE_ARGS+=--disable-mad
.endif

.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=--with-win32libdir=${LOCALBASE}/lib/win32 \
		--enable-qtx \
		--with-reallibdir=${LOCALBASE}/lib/win32
.else
CONFIGURE_ARGS+=--disable-win32 \
		--disable-qtx \
		--disable-real
.endif

.if ${FLAVOR:L:Maa}
CONFIGURE_ARGS+=--enable-aa
LIB_DEPENDS+=  aa.1.3::graphics/aalib
.else
CONFIGURE_ARGS+=--disable-aa
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mplayer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mplayer
	${INSTALL_DATA_DIR} ${PREFIX}/share/mplayer/Skin/${SKIN}
	${INSTALL_DATA} ${WRKDIR}/${SKIN}/* ${PREFIX}/share/mplayer/Skin/${SKIN}
	cd ${WRKDIST}/etc; ${INSTALL_DATA} input.conf menu.conf codecs.conf \
		${PREFIX}/share/examples/mplayer
	${INSTALL_DATA} ${WRKDIST}/etc/example.conf \
		${PREFIX}/share/examples/mplayer/mplayer.conf
	${INSTALL_DATA} ${WRKDIST}/DOCS/HTML/en/*.html ${PREFIX}/share/doc/mplayer

.include <bsd.port.mk>
