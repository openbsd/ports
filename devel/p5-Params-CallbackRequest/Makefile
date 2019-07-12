# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:03 sthen Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Params-CallbackRequest-1.20
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class \
		devel/p5-Class-ISA
TEST_DEPENDS =	devel/p5-Class-ISA

.include <bsd.port.mk>
