# $OpenBSD: Makefile,v 1.9 2000/04/18 23:56:26 espie Exp $

DISTNAME=	gperf-2.7
PKGNAME=	gperf-2.7.19981006
CATEGORIES=   	devel
NEED_VERSION=	1.223

MAINTAINER=	espie@cvs.openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

SEPARATE_BUILD=	concurrent  
HAS_CONFIGURE=	Yes 
FAKE=		Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}/${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

#post-install:
#	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir


.include <bsd.port.mk>
