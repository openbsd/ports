# $OpenBSD: Makefile,v 1.12 2013/01/17 08:37:58 ajacoutot Exp $

COMMENT =		open source MPI-2 implementation
BROKEN-hppa =		error: Could not determine global symbol label prefix
BROKEN-powerpc =	checking if Fortran 77 compiler works... no

V=			1.4.1
DISTNAME =		openmpi-$V
REVISION =		1

SHARED_LIBS =		mca_common_sm 1.0 \
			mpi 0.1 \
			mpi_cxx 0.0 \
			mpi_f77 0.0 \
			open-pal 0.0 \
			open-rte 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.open-mpi.org/

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>
MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran
BUILD_DEPENDS +=	${MODFORTRAN_BUILD_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB	+=		c m pthread stdc++ util z

MASTER_SITES =		${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

USE_GROFF =		Yes
# XXX: uses a locally modified libtool.

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu

# openmpi's otfinfo conflicts with the one from texlive
post-install:
	mv ${PREFIX}/bin/otfinfo ${PREFIX}/bin/otfinfompi

.include <bsd.port.mk>
