COMMENT = 	RawTherapee algorithms as a library

GH_ACCOUNT = 	CarVac
GH_PROJECT = 	librtprocess
GH_TAGNAME = 	0.12.0

SHARED_LIBS +=  rtprocess                 0.0 # 0.0

CATEGORIES = 	graphics

# GPLv3
PERMIT_PACKAGE = Yes

# same as rawtherapee, obviously
COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

MODULES = 	devel/cmake
CONFIGURE_ARGS = -DOPTION_OMP=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
