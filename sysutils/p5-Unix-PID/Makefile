# $OpenBSD: Makefile,v 1.4 2010/07/13 20:14:22 sthen Exp $

COMMENT=	interface for getting PID info

DISTNAME=	Unix-PID-0.0.15
REVISION=	0
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
