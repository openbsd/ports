# $OpenBSD: Makefile,v 1.4 2000/02/12 08:41:11 turan Exp $ 
# Id: Makefile,v 1.7 1996/11/18 11:36:43 asami Exp $
#

DISTNAME=       tintin++v1.5pl6
PKGNAME=	tintin-1.5.6
CATEGORIES=     net games

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=   ftp://princeton.edu/pub/tintin++/dist/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.191

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}

WRKDIST=         ${WRKDIR}/tintin++/src

.include <bsd.port.mk>
