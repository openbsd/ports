# $OpenBSD: Makefile,v 1.8 2010/10/23 15:09:57 steven Exp $

COMMENT =		open source MPI-2 implementation

V=			1.4.1
DISTNAME =		openmpi-$V
PKGNAME =		${DISTNAME}p1

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
MODFORTRAN_COMPILER =	g77
BUILD_DEPENDS +=	${MODFORTRAN_BUILD_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB	+=		c m pthread stdc++ util z

MASTER_SITES =		${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

USE_GROFF =	Yes
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu

# openmpi's otfinfo conflicts with the one from texlive
post-install:
	mv ${PREFIX}/bin/otfinfo ${PREFIX}/bin/otfinfompi

.include <bsd.port.mk>
