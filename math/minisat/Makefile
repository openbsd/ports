# $OpenBSD: Makefile,v 1.9 2017/04/10 11:46:22 sthen Exp $

COMMENT=		minimalistic Boolean satisfiability solver

DISTNAME=		minisat-2.2.0
REVISION=		0
CATEGORIES=		math

HOMEPAGE=		http://minisat.se/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			MiniSat.pdf
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

WANTLIB +=		c m ${LIBCXX} z

USE_GMAKE=		Yes
ALL_TARGET=		minisat
NO_TEST=		Yes
MAKE_FLAGS=		CXX="${CXX}"
MAKE_ENV+=		MROOT=${WRKBUILD}
WRKDIST=		${WRKDIR}/minisat

do-build:
	cd ${WRKBUILD}/core && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
	cd ${WRKBUILD}/simp && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/core/minisat ${PREFIX}/bin/minisat
	${INSTALL_PROGRAM} ${WRKSRC}/simp/minisat ${PREFIX}/bin/minisats
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minisat
	${INSTALL_DATA} ${DISTDIR}/MiniSat.pdf ${PREFIX}/share/doc/minisat

.include <bsd.port.mk>
