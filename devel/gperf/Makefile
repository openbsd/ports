# $OpenBSD: Makefile,v 1.2 2000/02/02 17:02:39 espie Exp $

DISTNAME=	gperf-2.7
PKGNAME=	gperf-2.7-19981006
CATEGORIES=   	devel

MAINTAINER=	espie@cvs.openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gperf
DIRECTORY=	egcs/infrastructure/
MASTER_SITES0=	ftp://egcs.cygnus.com/pub/${DIRECTORY}
MASTER_SITES0+=	ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
MASTER_SITES0+=	ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
PATCH_DIST_STRIP=-p1

PATCHFILES=	gperf-2.7-19981006.pat:0

NEED_VERSION=1.175
SEPARATE_BUILD=	concurrent  
GNU_CONFIGURE=	Yes 

post-install:
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir


.include <bsd.port.mk>
