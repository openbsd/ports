# $OpenBSD: Makefile,v 1.13 2020/02/15 10:03:11 benoit Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-View-JSON-0.37
CATEGORIES =	converters www

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

.include <bsd.port.mk>
