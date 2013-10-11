# $OpenBSD: Makefile,v 1.8 2013/10/11 23:48:31 naddy Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan

DISTNAME=	Carp-Assert-More-1.12
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
