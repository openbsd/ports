# $OpenBSD: Makefile,v 1.5 1999/10/28 10:06:07 turan Exp $

BROKEN=		c++ syntax errors

DISTNAME=	swig1.1
PKGNAME=	swig-1.1
CATEGORIES=	devel

#BROKEN=	"newer version available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.cs.utah.edu/pub/beazley/SWIG/

WRKSRC=		${WRKDIR}/SWIG1.1
GNU_CONFIGURE=	yes

post-build:
	@cd ${WRKSRC}; make runtime

.include <bsd.port.mk>
