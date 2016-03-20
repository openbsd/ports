# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:14 naddy Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Carp-Assert-More-1.14
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS +=	devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
