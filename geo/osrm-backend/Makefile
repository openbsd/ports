# devel/tbb does not support 64-bits atomics on ppc32, forcing them does
# not help, see tbb's ${WRKSRC}/include/tbb/machine/mac_ppc.h
NOT_FOR_ARCHS =	powerpc

COMMENT =		high-performance road network routing engine

GH_ACCOUNT =		Project-OSRM
GH_PROJECT =		osrm-backend
GH_COMMIT =		d9ce9cf780777c96d74e0430b7c6f1dee6930f9a
DISTNAME =		osrm-backend-5.27.1pl1

CATEGORIES =		geo

HOMEPAGE =		https://project-osrm.org/

# BSD 2-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += boost_date_time-mt boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_thread-mt bz2 c expat m tbb z

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
