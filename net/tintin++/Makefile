# $OpenBSD: Makefile,v 1.6 2000/03/24 22:11:54 espie Exp $ 
# Id: Makefile,v 1.7 1996/11/18 11:36:43 asami Exp $
#

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
CATEGORIES=     net games
NEED_VERSION=	1.191

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=   ftp://princeton.edu/pub/tintin++/dist/
EXTRACT_SUFX=   .tar.Z

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}

WRKDIST=         ${WRKDIR}/tintin++/src

.include <bsd.port.mk>
