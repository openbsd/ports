# $OpenBSD: Makefile,v 1.6 2015/01/21 14:42:32 sthen Exp $

COMMENT =	return a new component instance per request

MODULES =	cpan
DISTNAME =	Catalyst-Component-InstancePerContext-0.001001
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Moose \
			www/p5-Catalyst-Runtime

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
