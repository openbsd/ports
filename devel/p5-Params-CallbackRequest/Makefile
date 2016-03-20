# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:31 naddy Exp $

COMMENT=	functional and object-oriented callback architecture

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Params-CallbackRequest-1.20
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Params-Validate \
		devel/p5-Exception-Class \
		devel/p5-Class-ISA
TEST_DEPENDS =	devel/p5-Class-ISA

.include <bsd.port.mk>
