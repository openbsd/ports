# $OpenBSD: Makefile,v 1.7 1999/04/06 19:34:19 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       rman-3.0.5
CATEGORIES=	textproc
NO_CDROM=	"LIC: Requires licence for redistribution."

MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

NO_CDROM=	"License required"
MAN1=		rman.1

post-install:
	strip ${PREFIX}/bin/rman
	chmod 755 ${PREFIX}/bin/rman
	chmod 644 ${PREFIX}/man/man1/rman.1

.include <bsd.port.mk>
