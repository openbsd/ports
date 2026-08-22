COMMENT=	portable FPGA place and route tool
CATEGORIES=	cad

GH_ACCOUNT=	YosysHQ
GH_PROJECT=	nextpnr
GH_COMMIT=	da46844ca67f0c5eca59351164a507fce504eaa2
DISTNAME=	nextpnr-0.10pl20260722

HOMEPAGE=	https://github.com/YosysHQ/nextpnr
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# ISC
PERMIT_PACKAGE=	yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += boost_atomic-mt boost_chrono-mt boost_container-mt
WANTLIB += boost_date_time-mt boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_random-mt boost_regex-mt boost_thread-mt c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		devel/boost

BUILD_DEPENDS=	cad/prjpeppercorn \
		math/eigen3

CONFIGURE_ARGS=	-DARCH="generic;himbaechel" \
		-DHIMBAECHEL_UARCH="gatemate" \
		-DHIMBAECHEL_PEPPERCORN_PATH=${LOCALBASE}/share/prjpeppercorn/1.13

.include <bsd.port.mk>
