# $OpenBSD: Makefile,v 1.21 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=	graph data structures in perl

MODULES=	cpan
DISTNAME=	Graph-0.94
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

pre-configure:
	@rm -f ${WRKSRC}/lib/Graph/TransitiveClosure.pm.orig

.include <bsd.port.mk>
