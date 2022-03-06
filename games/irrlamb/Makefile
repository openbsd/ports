# $OpenBSD: Makefile,v 1.14 2022/03/06 00:54:37 kmos Exp $

BROKEN-sparc64 = uses sse, but fails an assert even without sse

V =		1.0.1
COMMENT =	third person, 3D physics game
DISTNAME =	irrlamb-$Vr613-src
PKGNAME =	irrlamb-$V
CATEGORIES =	games x11

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU Irrlicht X11 Xext Xrandr
WANTLIB += Xxf86vm c freetype jpeg m ogg openal png sqlite3 vorbis
WANTLIB += vorbisfile z

MASTER_SITES =	https://github.com/jazztickets/irrlamb/releases/download/v$V/

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		databases/sqlite3 \
		x11/irrlicht

RUN_DEPENDS =	devel/desktop-file-utils

WRKDIST =	${WRKDIR}/irrlamb-$Vr613

NO_TEST =	Yes

post-extract:
	rm -rf ${WRKSRC}/src/irrlicht

post-patch:
	sed -i -e "s,games/,,g" ${WRKSRC}/CMakeLists.txt \
				  ${WRKSRC}/deployment/irrlamb
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
