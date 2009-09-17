# $OpenBSD: Makefile,v 1.1.1.1 2009/09/17 21:12:04 jasper Exp $

COMMENT=		minimalistic SAT solver

V=			1.14
DISTNAME=		MiniSat_v$V.2006-Aug-29.src
PKGNAME=		minisat-$V
CATEGORIES=		math

HOMEPAGE=		http://minisat.se/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/downloads/
EXTRACT_SUFX=		.zip
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			MiniSat.ps.gz

WRKDIST=		${WRKDIR}/MiniSat_v$V/

WANTLIB += c m stdc++ z

USE_GMAKE=		Yes

ALL_TARGET=		minisat
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/minisat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minisat
	${INSTALL_DATA} ${WRKDIR}/MiniSat.ps ${PREFIX}/share/doc/minisat

.include <bsd.port.mk>
