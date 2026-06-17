COMMENT =		improved opensource version of Dune 2

# Newer version depends on miniupnpc->=2.2.8
DISTNAME =		dunelegacy-0.99.2

CATEGORIES =		games x11

HOMEPAGE =		https://dunelegacy.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer SDL2_ttf c curl
WANTLIB += enet execinfo m

SITES = 		http://www.linklevel.net/distfiles/

MODULES = 		devel/cmake

# c++17
COMPILER = 		base-clang ports-gcc

LIB_DEPENDS =		devel/sdl2-mixer \
			devel/sdl2-ttf \
			net/curl \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+4,-guic
TEST_DEPENDS = 		devel/cppunit

CONFIGURE_ARGS += 	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib \
				-lenet -lexecinfo"
CXXFLAGS += 		-DDUNELEGACY_DATADIR=\\\"${PREFIX}/share/DuneLegacy\\\"

WRKDIST =		${WRKDIR}/${PKGNAME}

post-extract:
	rm -r ${WRKSRC}/include/enet

.include <bsd.port.mk>
