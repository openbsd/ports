# $OpenBSD: Makefile,v 1.10 2000/06/20 16:37:41 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       rman-3.0.8
CATEGORIES=	textproc

MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	chmod 755 ${PREFIX}/bin/rman
	${INSTALL_DATA} ${WRKSRC}/rman.1 ${PREFIX}/man/man1
	chmod 644 ${PREFIX}/man/man1/rman.1

.include <bsd.port.mk>
