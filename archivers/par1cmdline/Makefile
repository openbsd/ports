# $OpenBSD: Makefile,v 1.2 2004/11/21 12:50:32 espie Exp $

COMMENT=	"command line implementation of the PAR v1.0 specification"
DISTNAME=	par-v1.1
PKGNAME=	${DISTNAME:S/par-v/par1cmdline-/}
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parchive/}

HOMEPAGE=	http://parchive.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

WRKDIST=${WRKDIR}/par-cmdline

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/par1cmdline
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/par1cmdline

.include <bsd.port.mk>
