# $OpenBSD: Makefile,v 1.3 2015/01/20 09:56:55 benoit Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
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
