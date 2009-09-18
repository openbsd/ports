# $OpenBSD: Makefile,v 1.2 2009/09/18 09:31:33 jasper Exp $

COMMENT=		minimalistic Boolean satisfiability solver

V=			1.14
DISTNAME=		MiniSat_v$V.2006-Aug-29.src
PKGNAME=		minisat-$Vp0
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
