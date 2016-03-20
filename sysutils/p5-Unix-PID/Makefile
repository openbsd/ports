# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:03 naddy Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.23
CATEGORIES=	sysutils
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-List-Cycle \
		math/p5-Math-Fibonacci-Phi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
