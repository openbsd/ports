# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:03 sthen Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Traits-Pluggable-0.12
CATEGORIES =	devel
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
