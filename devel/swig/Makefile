# $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:05 marc Exp $
#

DISTNAME=	swig1.1
PKGNAME=	swig-1.1
CATEGORIES=	devel

#BROKEN=	"newer version available"

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.cs.utah.edu/pub/beazley/SWIG/

WRKSRC=		${WRKDIR}/SWIG1.1
GNU_CONFIGURE=	yes

post-build:
	@cd ${WRKSRC}; make runtime

.include <bsd.port.mk>
