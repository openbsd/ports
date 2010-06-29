# $OpenBSD: Makefile,v 1.4 2010/06/29 05:01:34 steven Exp $

COMMENT =	library for fast updates of QR and Cholesky decompositions

DISTNAME =	qrupdate-1.1.1
PKGNAME =	${DISTNAME}p2
SHARED_LIBS +=  qrupdate	0.0	# .1.1
CATEGORIES =	math

HOMEPAGE =	http://qrupdate.sourceforge.net/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qrupdate/}

MODULES =		fortran
MODFORTRAN_WANTG77 =	Yes

WANTLIB =		m ${MODFORTRAN_WANTLIB}

BUILD_DEPENDS =		${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS =		${MODFORTRAN_LIB_DEPENDS}

ALL_TARGET =		lib solib
MAKE_FLAGS =		FC="${FC}" FFLAGS="${FFLAGS}" \
			VERSION=${LIBqrupdate_VERSION} \
			MAJOR=${LIBqrupdate_VERSION:R} \
			BLAS= LAPACK=
USE_GMAKE =		Yes

REGRESS_TARGET =	test
REGRESS_FLAGS =		BLAS="-lblas" LAPACK="-llapack"

SUBST_VARS =		MAKE_PROGRAM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
