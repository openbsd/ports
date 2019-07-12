# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:14 sthen Exp $

COMMENT =		hardcore 3D space shmup
BROKEN-sparc64 =	SIGABRT terminate called after throwing an instance of 'std::bad_alloc'
BROKEN-powerpc =	SIGABRT terminate called after throwing an instance of 'std::bad_alloc'

V =			1.3.2
DISTNAME =		astromenace-src-$V
PKGNAME =		astromenace-$V
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://www.viewizard.com/

# code GPLv3+, data a mix of GPLv3+, CC BY-SA 3.0, SIL OFL 1.1
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU ICE SDL SM X11 Xext Xinerama alut c fontconfig
WANTLIB += freetype m ogg openal pthread ${COMPILER_LIBCXX} vorbis vorbisfile

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=openastromenace/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake
LIB_DEPENDS =		audio/freealut \
			audio/libvorbis \
			audio/openal \
			devel/sdl

CONFIGURE_ARGS +=	-DDATADIR=${PREFIX}/share/astromenace

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/AstroMenace

do-install:
	cd ${WRKSRC} && \
		${WRKBUILD}/AstroMenace --pack --rawdata=./RAW_VFS_DATA --dir=.
	${INSTALL_PROGRAM} ${WRKBUILD}/AstroMenace ${PREFIX}/bin/astromenace
	${INSTALL_DATA_DIR} ${PREFIX}/share/astromenace/
	${INSTALL_DATA} ${WRKSRC}/gamedata.vfs ${PREFIX}/share/astromenace/

.include <bsd.port.mk>
