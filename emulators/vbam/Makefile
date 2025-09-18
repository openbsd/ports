BROKEN-alpha =		ICE or OOM on hq_implementation.cpp
BROKEN-hppa =		ICE or OOM on src/filters/hq/c/hq_base.h:421

COMMENT =		emulator for Nintendo Game Boy (Color/Advance)

GH_ACCOUNT =		visualboyadvance-m
GH_PROJECT =		${GH_ACCOUNT}
GH_TAGNAME =		v2.2.2
PKGNAME =		vbam-${GH_TAGNAME:S/v//}

CATEGORIES =		emulators

HOMEPAGE =		https://www.vba-m.com

# GPLv2+ (see doc/License.txt)
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL3 bz2 c charset iconv intl lzma m
WANTLIB += z

MODULES =		devel/cmake

# gnu++17
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			devel/gettext,-runtime \
			devel/sdl3

CONFIGURE_ARGS +=	-DENABLE_FFMPEG=OFF \
			-DENABLE_WX=OFF \
			-DENABLE_SDL=ON
# Creates unlinkable files ('data' according to file(1))
CONFIGURE_ARGS +=	-DENABLE_LTO=OFF
# Assembler autodetection fails on i386, can be worked around with
# -DCMAKE_ASM_NASM_COMPILER=yasm, but then linking fails.
CONFIGURE_ARGS +=	-DENABLE_ASM=OFF

CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

NO_TEST =		Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	mv ${PREFIX}/etc/ ${PREFIX}/share/examples/vbam/

.include <bsd.port.mk>
