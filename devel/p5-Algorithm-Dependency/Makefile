# $OpenBSD: Makefile,v 1.17 2020/10/18 07:43:24 benoit Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Algorithm-Dependency-1.112
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Test-ClassAPI \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
