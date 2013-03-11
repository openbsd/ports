# $OpenBSD: Makefile,v 1.6 2013/03/11 11:07:39 espie Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	2D adventure platformer game

DISTNAME=	frogatto-1.1.1
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	games

HOMEPAGE=	http://www.frogatto.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 + see share/frogatto/LICENSE
PERMIT_PACKAGE_CDROM=	may not charge
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU c m pthread stdc++ GLEW SDL SDL_image SDL_mixer
WANTLIB += SDL_ttf boost_iostreams-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt png

MASTER_SITES=	${HOMEPAGE}files/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/glew \
		devel/boost

NO_TEST=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	game server

SUBST_VARS=	CXX CFLAGS CXXFLAGS

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/src/sound.cpp \
		${WRKSRC}/src/filesystem.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/game ${PREFIX}/bin/frogatto
	${INSTALL_PROGRAM} ${WRKBUILD}/server ${PREFIX}/bin/frogatto-server
	${INSTALL_DATA_DIR} ${PREFIX}/share/frogatto
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/frogatto
.for i in data images music sounds
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/frogatto
.endfor

.include <bsd.port.mk>
