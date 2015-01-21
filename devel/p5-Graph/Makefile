# $OpenBSD: Makefile,v 1.24 2015/01/21 14:27:57 sthen Exp $

COMMENT=	graph data structures in perl

MODULES=	cpan
DISTNAME=	Graph-0.96
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	rm -f ${WRKSRC}/lib/Graph/TransitiveClosure.pm.orig

.include <bsd.port.mk>
