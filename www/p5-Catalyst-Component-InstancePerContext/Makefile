# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:50 sthen Exp $

COMMENT =	return a new component instance per request

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Component-InstancePerContext-0.001001
REVISION =	1
CATEGORIES =	www

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Moose \
			www/p5-Catalyst-Runtime

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
