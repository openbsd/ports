# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:31 sthen Exp $

COMMENT =	JSON view for your data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-View-JSON-0.37
CATEGORIES =	converters www
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	converters/p5-JSON-MaybeXS \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

.include <bsd.port.mk>
