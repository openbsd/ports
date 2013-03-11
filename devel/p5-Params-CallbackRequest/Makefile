# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:20 espie Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME=	Params-CallbackRequest-1.19
REVISION=	1
CATEGORIES=	devel
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class \
		devel/p5-Class-ISA
TEST_DEPENDS= devel/p5-Class-ISA

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
