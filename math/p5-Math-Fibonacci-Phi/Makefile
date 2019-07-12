# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:44 sthen Exp $

COMMENT=	calculates Phi and phi for Fibonacci numbers

DISTNAME=	Math-Fibonacci-Phi-0.02
REVISION=	1
CATEGORIES=	math

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	math/p5-Math-Fibonacci
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
