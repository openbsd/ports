# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:01 sthen Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Traits-Pluggable-0.12
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
