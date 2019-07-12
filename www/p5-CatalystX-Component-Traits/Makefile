# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:52 sthen Exp $

COMMENT =	automatic trait loading and resolution

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	CatalystX-Component-Traits-0.19
CATEGORIES =	www

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-List-MoreUtils \
		devel/p5-MooseX-Traits-Pluggable \
		devel/p5-namespace-autoclean

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
