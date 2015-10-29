# $OpenBSD: Makefile,v 1.7 2015/10/29 18:25:31 ajacoutot Exp $

COMMENT=	calculates Phi and phi for Fibonacci numbers

DISTNAME=	Math-Fibonacci-Phi-0.02
REVISION=	1
CATEGORIES=	math

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	math/p5-Math-Fibonacci
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
