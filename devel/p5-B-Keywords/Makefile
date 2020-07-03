# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:40 sthen Exp $

COMMENT =	lists of Perl keywords for use in backend modules

DISTNAME =	B-Keywords-1.20
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

TEST_DEPENDS=	devel/p5-Test-CPAN-Meta

MAKE_ENV=	TEST_POD=Yes
# This would require Perl::MinimumVersion, Test::MinimumVersion and
# Test::Kwalitee that we don't ship.
TEST_ENV=	IS_MAINTAINER=No

.include <bsd.port.mk>
