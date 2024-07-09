# devel/tbb does not support 64-bits atomics on ppc32, forcing them does
# not help, see tbb's ${WRKSRC}/include/tbb/machine/mac_ppc.h
NOT_FOR_ARCHS =	powerpc

COMMENT =		high-performance road network routing engine

GH_ACCOUNT =		Project-OSRM
GH_PROJECT =		osrm-backend
GH_COMMIT =		31e31a63d062fb804f5f4695ed3036ca7a269ead
REVISION =		2
DISTNAME =		osrm-backend-5.27.1pl0

CATEGORIES =		geo

HOMEPAGE =		https://project-osrm.org/

# BSD 2-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt bz2 c expat m tbb z

COMPILER =		base-clang ports-gcc

CXXFLAGS_base-clang =	-Wno-error=unused-but-set-variable

MODULES =		devel/cmake \
			lang/lua
MODLUA_VERSION =	5.3
BUILD_DEPENDS =		devel/protozero \
			devel/utfcpp>=4.0.5 \
			geo/libosmium
LIB_DEPENDS =		archivers/bzip2 \
			devel/boost \
			devel/tbb

CONFIGURE_ARGS =	-DOSMIUM_INCLUDE_DIR=${LOCALBASE}/include/osmium \
			-DENABLE_CCACHE=Off

CXXFLAGS +=		-I${LOCALBASE}/include/utf8cpp

# Requires network access, and http access to sample osrm data is 403'd
NO_TEST =		Yes

post-install:
	# Hack to avoid shipping an old flatbuffers copy in the default
	# include directory
	mv ${PREFIX}/include/flatbuffers ${PREFIX}/include/osrm

.include <bsd.port.mk>
