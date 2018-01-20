# $OpenBSD: Makefile,v 1.24 2018/01/20 14:03:39 jsg Exp $

BROKEN-hppa =		error: Could not determine global symbol label prefix
BROKEN-powerpc =	checking if Fortran 77 compiler works... no

COMMENT =		open source MPI-2 implementation

V=			1.4.1
DISTNAME =		openmpi-$V
REVISION =		6

SHARED_LIBS =		mca_common_sm 1.0 \
			mpi 0.1 \
			mpi_cxx 0.0 \
			mpi_f77 0.0 \
			open-pal 0.0 \
			open-rte 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.open-mpi.org/

MODULES =		fortran
MODFORTRAN_COMPILER =	g77
BUILD_DEPENDS +=	${MODFORTRAN_BUILD_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	+=		c m pthread ${COMPILER_LIBCXX} util z

MASTER_SITES =		${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

# XXX: uses a locally modified libtool.
USE_LIBTOOL =		No

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		F77=${MODFORTRAN_COMPILER}

# openmpi's otfinfo conflicts with the one from texlive
post-install:
	mv ${PREFIX}/bin/otfinfo ${PREFIX}/bin/otfinfompi

.include <bsd.port.mk>
