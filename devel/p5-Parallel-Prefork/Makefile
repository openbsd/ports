# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:31 naddy Exp $

COMMENT =	simple prefork server framework

DISTNAME =	Parallel-Prefork-0.17
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
TEST_DEPENDS =	devel/p5-Test-Requires

.include <bsd.port.mk>
