# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:31 espie Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.23
CATEGORIES=	sysutils

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-List-Cycle \
		math/p5-Math-Fibonacci-Phi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
