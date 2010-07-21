# $OpenBSD: Makefile,v 1.5 2010/07/21 15:18:16 merdely Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.21
CATEGORIES=	sysutils

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Class-Std \
		::devel/p5-Class-Std-Utils \
		::devel/p5-List-Cycle \
		::math/p5-Math-Fibonacci-Phi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
