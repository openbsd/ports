# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:45 espie Exp $

COMMENT =	automatic trait loading and resolution

MODULES =	cpan
DISTNAME =	CatalystX-Component-Traits-0.16
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-List-MoreUtils \
		devel/p5-MooseX-Traits-Pluggable \
		devel/p5-namespace-autoclean

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
