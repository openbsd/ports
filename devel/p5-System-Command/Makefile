# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:10 sthen Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	System-Command-1.119
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-IPC-Run

TEST_DEPENDS =	devel/p5-Test-Command \
		devel/p5-Test-Output

# Requires Pod::Coverage::TrustPod that we don't have in ports
MAKE_ENV +=	TEST_POD= AUTHOR_TESTING=

.include <bsd.port.mk>
