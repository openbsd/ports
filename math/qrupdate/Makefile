# $OpenBSD: Makefile,v 1.3 2010/05/29 15:28:50 naddy Exp $

COMMENT =	library for fast updates of QR and Cholesky decompositions

DISTNAME =	qrupdate-1.1.1
PKGNAME =	${DISTNAME}p1
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

USE_GMAKE =		Yes
NO_REGRESS =		Yes

SUBST_VARS =		MAKE_PROGRAM

pre-configure:
	perl -pi -e 's,!!LIBqrupdate_version!!,${LIBqrupdate_VERSION},;' \
		-e 's,!!LIBqrupdate_version_R!!,${LIBqrupdate_VERSION:R},' \
		${WRKSRC}/Makeconf
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
