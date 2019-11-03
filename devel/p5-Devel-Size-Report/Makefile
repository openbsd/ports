# $OpenBSD: Makefile,v 1.6 2019/11/03 14:07:41 jasper Exp $

COMMENT=		generate a size report for all elements in a structure

DISTNAME=		Devel-Size-Report-0.13
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

RUN_DEPENDS=		devel/p5-Array-RefElem \
			devel/p5-Devel-Size

.include <bsd.port.mk>
