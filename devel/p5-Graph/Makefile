# $OpenBSD: Makefile,v 1.18 2010/09/09 20:31:08 jasper Exp $

COMMENT=	graph data structures in perl

MODULES=	cpan
DISTNAME=	Graph-0.94
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Heap-*:devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@rm -f ${WRKSRC}/lib/Graph/TransitiveClosure.pm.orig

.include <bsd.port.mk>
