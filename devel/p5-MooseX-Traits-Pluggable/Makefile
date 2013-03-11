# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:19 espie Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
DISTNAME =	MooseX-Traits-Pluggable-0.10
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
