# OpenBSD makefile for:	rman
# Version required:     3.0.5
# Date created:         18 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.6 1998/05/31 00:42:17 angelos Exp $
#

DISTNAME=       rman-3.0.5
CATEGORIES=	textproc
NO_CDROM=	"LIC: Requires licence for redistribution."

MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	joey@OpenBSD.ORG

NO_CDROM=	"License required"
MAN1=		rman.1

post-install:
	strip ${PREFIX}/bin/rman
	chmod 755 ${PREFIX}/bin/rman
	chmod 644 ${PREFIX}/man/man1/rman.1

.include <bsd.port.mk>
