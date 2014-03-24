# $OpenBSD: Makefile,v 1.23 2014/03/24 08:57:04 jasper Exp $

COMMENT=	graph data structures in perl

MODULES=	cpan
DISTNAME=	Graph-0.96
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	rm -f ${WRKSRC}/lib/Graph/TransitiveClosure.pm.orig

.include <bsd.port.mk>
