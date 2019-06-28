# $OpenBSD: Makefile,v 1.28 2019/06/28 11:05:11 jca Exp $

COMMENT =		open source MPI-3.1 implementation

V =			4.0.1
DISTNAME =		openmpi-$V
REVISION =		0

SHARED_LIBS +=  mca_common_dstore         0.0 # 1.0
SHARED_LIBS +=  mca_common_monitoring     0.0 # 60.0
SHARED_LIBS +=  mca_common_ompio          0.0 # 60.1
SHARED_LIBS +=  mca_common_sm             2.0 # 60.0
SHARED_LIBS +=  mpi                       1.0 # 60.1
SHARED_LIBS +=  mpi_mpifh                 0.0 # 60.1
SHARED_LIBS +=  mpi_usempi_ignore_tkr     0.0 # 60.0
SHARED_LIBS +=  mpi_usempif08             0.0 # 60.0
SHARED_LIBS +=  ompitrace                 0.0 # 60.0
SHARED_LIBS +=  open-pal                  1.0 # 60.1
SHARED_LIBS +=  open-rte                  1.0 # 60.1

CATEGORIES =		devel

HOMEPAGE =		https://www.open-mpi.org/

MAINTAINER = 		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo m pciaccess pthread util z

MASTER_SITES =		${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

COMPILER =		base-clang ports-gcc
MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran
BUILD_DEPENDS =		devel/libtool,-ltdl
LIB_DEPENDS =		devel/libexecinfo

MAKE_FLAGS =		V=1
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD = 	Yes

.include <bsd.port.mk>
