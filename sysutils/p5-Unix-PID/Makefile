# $OpenBSD: Makefile,v 1.1.1.1 2007/12/17 20:23:33 merdely Exp $

COMMENT=	interface for getting PID info

V=0.0.13
DISTNAME=	Unix-PID-v$V
PKGNAME=	p5-Unix-PID-$V
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
