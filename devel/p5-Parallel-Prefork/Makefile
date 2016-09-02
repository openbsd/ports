# $OpenBSD: Makefile,v 1.7 2016/09/02 23:00:15 ajacoutot Exp $

COMMENT =	simple prefork server framework

DISTNAME =	Parallel-Prefork-0.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Class-Accessor-Lite \
		devel/p5-List-MoreUtils \
		devel/p5-Scope-Guard \
		sysutils/p5-Proc-Wait3 \
		devel/p5-Signal-Mask
BUILD_DEPENDS =	${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Test-Requires \
		devel/p5-Test-SharedFork

.include <bsd.port.mk>
