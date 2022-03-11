# On i386: always_inline function '_mm_loadu_ps' requires target feature 'sse', but would be inlined into function 'BoxIntersectSimd' that is compiled without support for 'sse'
# On aarch64, riscv64 and sparc64: amnesia-tdd-0.0pl20211020/AmnesiaTheDarkDescent-11717474d4c0b6a7c0aca72dfd36efb6dedc50ed/HPL2/dependencies/AngelScript/sources/as_callfunc_x64_gcc.cpp:76:5: error: unknown register name '%rax' in asm
ONLY_FOR_ARCHS = amd64

COMMENT =	first person survival horror game

DISTNAME =	amnesia-tdd-0.0pl20211020
REVISION =	0

GH_ACCOUNT =	shamazmazum
GH_PROJECT =	AmnesiaTheDarkDescent
GH_COMMIT =	11717474d4c0b6a7c0aca72dfd36efb6dedc50ed

CATEGORIES =	games

HOMEPAGE =	https://www.amnesiagame.com/

MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

# GPLv3+: amnesia-tdd
# zlib: AngelScript, Newton Dynamics and OALWrapper
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL SDL2 c m ogg openal
WANTLIB += theora vorbis vorbisfile z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

# override optimization level because clang 13 segfaults but 11 worked with -O2
CFLAGS+=	-O0
CXXFLAGS+=	-O0

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		graphics/DevIL \
		graphics/glew \
		multimedia/libtheora

CONFIGURE_ARGS =	-DSYSTEMWIDE_RESOURCES=ON \
			-DSYSTEMWIDE_RESOURCES_LOCATION="${PREFIX}/share/amnesia-tdd"

WRKSRC =	${WRKDIST}/amnesia/src

post-install:
# create empty data directory
	${INSTALL_DATA_DIR} ${PREFIX}/share/amnesia-tdd
# rename binary to avoid name conflict with other amnesia ports
	@mv ${PREFIX}/bin/Amnesia{,-tdd}

.include <bsd.port.mk>
