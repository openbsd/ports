COMMENT =		open source MPI-3.1 implementation

V =			4.1.6
DISTNAME =		openmpi-$V

SHARED_LIBS +=  open-pal		9.0 # 70.3
SHARED_LIBS +=  mca_common_sm		5.0 # 70.0
SHARED_LIBS +=  mca_common_dstore	3.0 # 1.2
SHARED_LIBS +=  open-rte		9.0 # 70.3
SHARED_LIBS +=  mpi			9.0 # 70.6
SHARED_LIBS +=  mpi_mpifh		3.0 # 70.0
SHARED_LIBS +=  mpi_usempi_ignore_tkr	3.0 # 70.0
SHARED_LIBS +=  mpi_usempif08		5.0 # 70.0
SHARED_LIBS +=  mca_common_monitoring	3.0 # 70.0
SHARED_LIBS +=  mca_common_ompio	6.0 # 70.4
SHARED_LIBS +=  ompitrace		4.0 # 70.1

CATEGORIES =		devel

HOMEPAGE =		https://www.open-mpi.org/

MAINTAINER = 		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo m pciaccess pthread util z

SITES =	${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

COMPILER =		ports-gcc

# MODULES=fortran always uses ports-gcc (and overrides COMPILER)
# the openmpi applications and libraries will be built with ports-gcc, but
# are compatible with base-clang on archs where it is available
MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran
BUILD_DEPENDS =		devel/libtool,-ltdl

CONFIGURE_ARGS +=	--enable-mpi-fortran=usempif08 \
			--enable-mca-no-build=op-avx \
			FC=egfortran \
			CC=egcc

CONFIGURE_ENV +=	enable_libudev=no

MAKE_FLAGS =		V=1
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD = 	Yes

.include <bsd.port.mk>
