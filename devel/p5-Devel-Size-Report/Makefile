# $OpenBSD: Makefile,v 1.3 2015/01/21 14:27:57 sthen Exp $

COMMENT=		generate a size report for all elements in a structure

DISTNAME=		Devel-Size-Report-0.13
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

RUN_DEPENDS=		devel/p5-Array-RefElem \
			devel/p5-Devel-Size

.include <bsd.port.mk>
