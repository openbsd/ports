# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:48 naddy Exp $

COMMENT=	calculates Phi and phi for Fibonacci numbers

DISTNAME=	Math-Fibonacci-Phi-0.02
REVISION=	1
CATEGORIES=	math

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	math/p5-Math-Fibonacci
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
