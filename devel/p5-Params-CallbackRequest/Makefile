# $OpenBSD: Makefile,v 1.10 2014/12/20 08:48:37 benoit Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
DISTNAME =	Params-CallbackRequest-1.20
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class \
		devel/p5-Class-ISA
TEST_DEPENDS =	devel/p5-Class-ISA

.include <bsd.port.mk>
