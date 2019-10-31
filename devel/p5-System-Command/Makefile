# $OpenBSD: Makefile,v 1.7 2019/10/31 14:40:33 cwen Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	System-Command-1.119
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-IPC-Run

TEST_DEPENDS =	devel/p5-Test-Command \
		devel/p5-Test-Output

# Requires Pod::Coverage::TrustPod that we don't have in ports
MAKE_ENV +=	TEST_POD= AUTHOR_TESTING=

.include <bsd.port.mk>
