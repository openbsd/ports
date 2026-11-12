COMMENT =		simple and portable C++ stacktrace library

GH_ACCOUNT =		jeremy-rifkin
GH_PROJECT =		cpptrace
GH_TAGNAME =		v1.0.4

SHARED_LIBS +=		cpptrace	0.0 # 0.0

CATEGORIES =		devel
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} dwarf m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		devel/libdwarf

TEST_DEPENDS =		devel/gtest

CONFIGURE_ARGS =	-DCPPTRACE_USE_EXTERNAL_LIBDWARF=ON \
			-DCPPTRACE_USE_EXTERNAL_GTEST=ON \
			-DCPPTRACE_FIND_LIBDWARF_WITH_PKGCONFIG=ON \
			-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DBUILD_TESTING=ON \
			-DCCACHE_PROGRAM=""

LDFLAGS +=		-L${LOCALBASE}/lib

.include <bsd.port.mk>
