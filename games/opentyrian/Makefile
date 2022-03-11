V =			2.1.20201204
COMMENT =		port of the DOS shoot-em-up Tyrian
DISTNAME =		opentyrian-${V}
CATEGORIES =		games x11

# No new releases... but years of activity
GH_ACCOUNT =		opentyrian
GH_PROJECT =		opentyrian
GH_COMMIT =		650e1f72fd18d2242d10d706afa7f77f80151aea

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_net c m

RUN_DEPENDS =		archivers/unzip
LIB_DEPENDS =		devel/sdl2-net

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}" \
			MAKECMDGOALS=release

FAKE_FLAGS =		mandir="${PREFIX}/man"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/opentyrian
	mv ${PREFIX}/bin/opentyrian ${PREFIX}/share/opentyrian/opentyrian
	${SUBST_PROGRAM} ${FILESDIR}/opentyrian ${PREFIX}/bin/opentyrian

.include <bsd.port.mk>
