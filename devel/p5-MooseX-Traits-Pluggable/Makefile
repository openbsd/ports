# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:29 naddy Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Traits-Pluggable-0.12
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
