BROKEN-sparc64 = undefined reference to std::filesystem::__cxx11::path::_M_split_cmpts()

COMMENT =	engine recreation for Heroes of Might and Magic 2

DIST_TUPLE =	github ihhub fheroes2 1.1.4 .
CATEGORIES =	games
HOMEPAGE =	https://ihhub.github.io/fheroes2/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2.0+, LGPLv2.1+ (src/thirdparty/libsmacker)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m z

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gmake \
		textproc/gsed
LIB_DEPENDS =	devel/sdl2-mixer
RUN_DEPENDS =	audio/timidity \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS=	-DFHEROES2_DATA=${PREFIX}/share/fheroes2

NO_TEST =	Yes

# needs gsed
do-gen:
	sed -Ei 's,([[:blank:]])sed,\1gsed,g' \
		${WRKSRC}/files/lang/Makefile

.include <bsd.port.mk>
