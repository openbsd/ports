# $OpenBSD: Makefile,v 1.11 2015/10/29 18:25:32 ajacoutot Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.23
CATEGORIES=	sysutils
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-List-Cycle \
		math/p5-Math-Fibonacci-Phi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
