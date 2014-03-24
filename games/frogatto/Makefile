# $OpenBSD: Makefile,v 1.10 2014/03/24 12:31:16 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	2D adventure platformer game

# repackaged source from github minus the MacOS* dirs
DISTNAME=	frogatto-1.3.20130317
REVISION=	1
MASTER_SITES=	https://distfiles.bsdfrog.org/
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	games

HOMEPAGE=	http://www.frogatto.com/

# GPLv3 + see share/frogatto/LICENSE
PERMIT_PACKAGE_CDROM=	may not charge
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLEW GLU SDL SDL_image SDL_mixer SDL_ttf X11 boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c jpeg
WANTLIB += m png pthread stdc++ tiff webp z

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/glew \
		devel/boost

NO_TEST=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	game server

CXXFLAGS +=	-I${LOCALBASE}/include

MAKE_ENV=	CXX=${CXX} CXXFLAGS="${CXXFLAGS}"

# src/difficulty.hpp:20:34: error: no newline at end of file
post-extract:
	echo >> ${WRKSRC}/src/difficulty.hpp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/src/sound.cpp \
		${WRKSRC}/src/filesystem.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/frogatto
	${INSTALL_PROGRAM} ${WRKBUILD}/game ${PREFIX}/share/frogatto/
	${INSTALL_PROGRAM} ${WRKBUILD}/server ${PREFIX}/share/frogatto/
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/frogatto
.for i in data images modules music
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/frogatto
.endfor
	rm -rf ${PREFIX}/share/frogatto/modules/frogatto/music_aac*
.for i in frogatto frogatto-server
	echo "#!/bin/sh" > ${PREFIX}/bin/${i}
	echo "#" >> ${PREFIX}/bin/${i}
	echo >> ${PREFIX}/bin/${i}
	chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/${i}
	chmod ${BINMODE} ${PREFIX}/bin/${i}
.endfor
	echo "cd ${TRUEPREFIX}/share/frogatto && ./game \"\$$@\"" >> ${PREFIX}/bin/frogatto
	echo "cd ${TRUEPREFIX}/share/frogatto && ./server \"\$$@\"" >> ${PREFIX}/bin/frogatto-server

.include <bsd.port.mk>
