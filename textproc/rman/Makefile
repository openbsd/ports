# OpenBSD makefile for:	rman
# Version required:     3.0.3a12
# Date created:         18 Nov 1997
# Whom:                 ejovi
#
# $Id: Makefile,v 1.1.1.1 1997/11/19 00:08:17 joey Exp $
#

DISTNAME=       rman-3.0.3a12
CATEGORIES=	textproc
MASTER_SITES=   ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	joey@OpenBSD.ORG

NO_CDROM=	"License required"
MAN1=		rman.1

post-install:
	@strip ${PREFIX}/bin/rman

.include <bsd.port.mk>
