# $OpenBSD: Makefile,v 1.2 2008/04/15 03:06:39 merdely Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.0.15
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
		::math/p5-Math-Fibonacci-Phi \
		::devel/p5-version
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
