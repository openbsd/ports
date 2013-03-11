# $OpenBSD: Makefile,v 1.22 2013/03/11 10:50:17 espie Exp $

COMMENT=	graph data structures in perl

MODULES=	cpan
DISTNAME=	Graph-0.94
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@rm -f ${WRKSRC}/lib/Graph/TransitiveClosure.pm.orig

.include <bsd.port.mk>
