COMMENT =		improved opensource version of Dune 2

DISTNAME =		dunelegacy-0.98.5

CATEGORIES =		games x11

HOMEPAGE =		https://dunelegacy.sourceforge.net/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 SDL2_mixer SDL2_ttf c enet m pthread ${COMPILER_LIBCXX}

SITES = 		http://www.linklevel.net/distfiles/

COMPILER = 		base-clang ports-gcc

LIB_DEPENDS =		devel/sdl2-mixer \
			devel/sdl2-ttf \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils
TEST_DEPENDS = 		devel/cppunit

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -DXTHREADS" LDADD+=-lenet

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.16
AUTORECONF =            autoreconf -i

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL2 \
			-I${X11BASE}/include"

WRKDIST =		${WRKDIR}/${PKGNAME}

post-extract:
	rm -r ${WRKSRC}/include/enet

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dunelegacy/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dunelegacy/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dunelegacy.png ${PREFIX}/share/pixmaps/dunelegacy.png

.include <bsd.port.mk>
