# OpenBSD makefile for:	rman
# Version required:     3.0.3a12
# Date created:         18 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/04/12 23:23:07 marc Exp $
#

DISTNAME=       rman-3.0.3a12
CATEGORIES=	textproc
NO_CDROM=	"LIC: Requires licence for redistribution."

MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	joey@OpenBSD.ORG

NO_CDROM=	"License required"
MAN1=		rman.1

post-install:
	@strip ${PREFIX}/bin/rman

.include <bsd.port.mk>
