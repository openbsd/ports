# $OpenBSD: Makefile,v 1.1.1.1 1999/05/30 18:35:17 espie Exp $

DISTNAME=	gperf-2.7
PKGNAME=	gperf-2.7-19981006
CATEGORIES=   	devel

MAINTAINER=	espie@cvs.openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gperf
DIRECTORY=	egcs/infrastructure/
PATCH_SITES=	ftp://egcs.cygnus.com/pub/${DIRECTORY}
PATCH_SITES+= 	ftp://ftp.goof.com/pub/pcg/${DIRECTORY}
PATCH_SITES+= 	ftp://go.cygnus.com/pub/ftp.cygnus.com/${DIRECTORY}
PATCH_DIST_STRIP=-p1

PATCHFILES=	gperf-2.7-19981006.pat

NEED_VERSION=1.71
SEPARATE_BUILD=	concurrent  
GNU_CONFIGURE=	yes 

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir


.include <bsd.port.mk>
