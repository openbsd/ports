# $OpenBSD: Makefile,v 1.4 2010/07/18 10:50:12 steven Exp $

COMMENT=		minimalistic Boolean satisfiability solver

V=			1.14
DISTNAME=		MiniSat-p_v$V.2006-Sep-07.src
PKGNAME=		minisat-$V
REVISION=		1
CATEGORIES=		math

HOMEPAGE=		http://minisat.se/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/downloads/
EXTRACT_SUFX=		.zip
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			MiniSat.ps.gz

WRKDIST=		${WRKDIR}/MiniSat-p_v$V/

WANTLIB += c m stdc++ z

USE_GMAKE=		Yes

ALL_TARGET=		minisat
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/minisat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minisat
	${INSTALL_DATA} ${WRKDIR}/MiniSat.ps ${PREFIX}/share/doc/minisat

.include <bsd.port.mk>
