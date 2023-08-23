COMMENT=		rogue-like zombie survival game
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.G
DISTNAME=		cataclysm-dda-${GH_TAGNAME}
EPOCH=			0
REVISION=		0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Kirill Bychkov <kirby@openbsd.org>

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} c iconv intl m z

# C++14
COMPILER=		base-clang ports-gcc

MODULES=		devel/cmake textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_ARGS = 	-DLOCALIZE=ON \
			-DBACKTRACE=OFF \
			-DGIT_VERSION=${GH_TAGNAME} \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -lintl -liconv"

SUBST_VARS += 		GH_TAGNAME

.if ${FLAVOR:Mno_x11}
WANTLIB+=		curses form
CONFIGURE_ARGS += 	-DCURSES_INCLUDE_PATH=/usr/include
.else
WANTLIB+=		SDL2 SDL2_image SDL2_mixer SDL2_ttf

LIB_DEPENDS+=		devel/sdl2-mixer \
			devel/sdl2-image \
			devel/sdl2-ttf

CONFIGURE_ARGS+=       -DCURSES=OFF -DTILES=ON -DSOUND=ON

MAN_TILES=		-tiles
.endif

NO_TEST=		Yes

post-extract:
	mv ${WRKSRC}/src/third-party/flatbuffers/ \
		${WRKSRC}/src/third-party/flatbuffers_int/

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/version.cmake
	perl -pi -e 's,flatbuffers/,flatbuffers_int/,g' \
		${WRKSRC}/src/third-party/CMakeLists.txt \
		${WRKSRC}/src/third-party/flatbuffers_int/*.h \
		${WRKSRC}/src/third-party/flatbuffers_int/*.cpp \
		${WRKSRC}/src/third-party/flatbuffers_int/pch/*.h \
		${WRKSRC}/src/main.cpp \
		${WRKSRC}/src/flexbuffer_cache.* \
		${WRKSRC}/src/flexbuffer_json-inl.h \
		${WRKSRC}/src/flexbuffer_json.h \
		${WRKSRC}/pch/main-pch.hpp

post-configure:
	touch ${WRKSRC}/VERSION.txt

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
