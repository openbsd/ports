# $OpenBSD: Makefile,v 1.8 2000/03/23 06:51:17 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       rman-3.0.5
CATEGORIES=	textproc

MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

MAN1=		rman.1

post-install:
	strip ${PREFIX}/bin/rman
	chmod 755 ${PREFIX}/bin/rman
	chmod 644 ${PREFIX}/man/man1/rman.1

.include <bsd.port.mk>
