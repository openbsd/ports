# $OpenBSD: Makefile,v 1.1.1.1 2009/10/10 18:11:41 jasper Exp $

COMMENT =		open source MPI-2 implementation

DISTNAME =		openmpi-1.3.3

SHARED_LIBS =		mca_common_sm 0.0 \
			mpi 0.0 \
			mpi_cxx 0.0 \
			mpi_f77 0.0 \
			open-pal 0.0 \
			open-rte 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.open-mpi.org/

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB	+=		c m pthread stdc++ util z

MASTER_SITES =		${HOMEPAGE}/software/ompi/v1.3/downloads/

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu

# openmpi's otfinfo conflicts with the one from texlive
post-install:
	mv ${WRKINST}${LOCALBASE}/bin/otfinfo ${WRKINST}${LOCALBASE}/bin/otfinfompi

.include <bsd.port.mk>
