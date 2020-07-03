# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:56 sthen Exp $

COMMENT =	return a new component instance per request

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Component-InstancePerContext-0.001001
REVISION =	2
CATEGORIES =	www

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Moose \
			www/p5-Catalyst-Runtime

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
