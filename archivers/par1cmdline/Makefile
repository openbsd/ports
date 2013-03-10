# $OpenBSD: Makefile,v 1.10 2013/03/10 22:28:04 espie Exp $

COMMENT=	command line implementation of the PAR v1.0 specification
DISTNAME=	par-v1.1
PKGNAME=	par1cmdline-1.1
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	1
WANTLIB=		c

NO_TEST=	Yes

WRKDIST=${WRKDIR}/par-cmdline

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par1cmdline
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin/par1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par1cmdline

.include <bsd.port.mk>
