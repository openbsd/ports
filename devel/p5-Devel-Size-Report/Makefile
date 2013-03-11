# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:16 espie Exp $

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

USE_GROFF=		Yes

.include <bsd.port.mk>
