# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:14 espie Exp $

COMMENT= 	alternative object layout in perl

MODULES=	cpan

DISTNAME=	Class-InsideOut-1.09
REVISION=	1

CATEGORIES=	devel
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-Class-ISA
TEST_DEPENDS= ${RUN_DEPENDS}

.include <bsd.port.mk>
