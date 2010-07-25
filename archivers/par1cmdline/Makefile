# $OpenBSD: Makefile,v 1.9 2010/07/25 02:59:44 jolan Exp $

COMMENT=	command line implementation of the PAR v1.0 specification
DISTNAME=	par-v1.1
PKGNAME=	par1cmdline-1.1
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

REVISION =	1
WANTLIB=		c

NO_REGRESS=	Yes

WRKDIST=${WRKDIR}/par-cmdline

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par1cmdline
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin/par1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par1cmdline

.include <bsd.port.mk>
