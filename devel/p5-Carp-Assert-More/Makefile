# $OpenBSD: Makefile,v 1.16 2020/11/07 06:15:36 benoit Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Carp-Assert-More-1.24
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
TEST_DEPENDS=	devel/p5-Test-Exception

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
