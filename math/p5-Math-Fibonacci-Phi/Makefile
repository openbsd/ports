# $OpenBSD: Makefile,v 1.2 2010/10/18 20:52:06 espie Exp $

COMMENT=	calculates Phi and phi for Fibonacci numbers

DISTNAME=	Math-Fibonacci-Phi-0.02
CATEGORIES=	math

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::math/p5-Math-Fibonacci
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
