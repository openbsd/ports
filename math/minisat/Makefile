# $OpenBSD: Makefile,v 1.5 2010/08/19 14:19:22 edd Exp $

COMMENT=		minimalistic Boolean satisfiability solver

DISTNAME=		minisat-2.2.0
CATEGORIES=		math

HOMEPAGE=		http://minisat.se/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/downloads/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			MiniSat.ps.gz

WANTLIB +=		c m stdc++ z

USE_GMAKE=		Yes
ALL_TARGET=		minisat
NO_REGRESS=		Yes
MAKE_ENV+=		MROOT=${WRKBUILD}

do-build:
	cd ${WRKBUILD}/core && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
	cd ${WRKBUILD}/simp && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/core/minisat ${PREFIX}/bin/minisat
	${INSTALL_PROGRAM} ${WRKSRC}/simp/minisat ${PREFIX}/bin/minisats
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minisat
	${INSTALL_DATA} ${WRKDIR}/MiniSat.ps ${PREFIX}/share/doc/minisat

.include <bsd.port.mk>
