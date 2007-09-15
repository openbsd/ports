# $OpenBSD: Makefile,v 1.19 2007/09/15 21:36:44 merdely Exp $

COMMENT=		strip TeX/LaTeX codes from a file

DISTNAME=		detex-2.6
CATEGORIES=		print

MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c

WRKDIST=		${WRKDIR}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/man/man1/detex.1


.include <bsd.port.mk>
