# $OpenBSD: Makefile,v 1.8 2010/07/11 15:57:47 espie Exp $

COMMENT=	command line implementation of the PAR v1.0 specification
DISTNAME=	par-v1.1
PKGNAME=	par1cmdline-1.1
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

REVISION =	0
WANTLIB=		c

NO_REGRESS=	Yes

WRKDIST=${WRKDIR}/par-cmdline

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par1cmdline
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin/par1
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par1cmdline

.include <bsd.port.mk>
