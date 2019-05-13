# $OpenBSD: Makefile,v 1.12 2019/05/13 12:33:58 cwen Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Carp-Assert-More-1.16
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
TEST_DEPENDS=	devel/p5-Test-Exception

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
