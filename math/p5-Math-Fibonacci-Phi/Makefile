# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:39 ajacoutot Exp $

COMMENT=	calculates Phi and phi for Fibonacci numbers

DISTNAME=	Math-Fibonacci-Phi-0.02
REVISION=	0
CATEGORIES=	math

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	math/p5-Math-Fibonacci
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
