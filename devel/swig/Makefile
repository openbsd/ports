# $OpenBSD: Makefile,v 1.6 2000/02/11 00:37:21 espie Exp $

BROKEN=		c++ syntax errors

DISTNAME=	swig1.1
PKGNAME=	swig-1.1
CATEGORIES=	devel

#BROKEN=	"newer version available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	ftp://ftp.cs.utah.edu/pub/beazley/SWIG/
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/SWIG1.1
GNU_CONFIGURE=	yes

post-build:
	@cd ${WRKSRC}; make runtime

.include <bsd.port.mk>
