# $OpenBSD: Makefile,v 1.7 2020/07/03 21:44:45 sthen Exp $

COMMENT =	compare perl data structures

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Data-Compare-1.25
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Same as Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-File-Find-Rule>=0.1

# Additional depends to avoid skipping tests
TEST_DEPENDS +=	converters/p5-JSON \
		devel/p5-Clone \
		devel/p5-Test-Pod

# Porting Scalar::Properties will enable more tests

.include <bsd.port.mk>
