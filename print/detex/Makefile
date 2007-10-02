# $OpenBSD: Makefile,v 1.20 2007/10/02 14:01:12 steven Exp $

COMMENT=		strip TeX/LaTeX codes from a file

DISTNAME=		detex-2.6
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

MASTER_SITES=		ftp://ftp.cs.purdue.edu/pub/trinkle/
EXTRACT_SUFX=		.tar

# free redistribution, see README
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=		${WRKDIR}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/man/man1/detex.1


.include <bsd.port.mk>
