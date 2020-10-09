# $OpenBSD: Makefile,v 1.1.1.1 2020/10/09 02:32:39 afresh1 Exp $

COMMENT =	inject components into your Catalyst application

DISTNAME =	CatalystX-InjectComponent-0.025

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Inspector \
			devel/p5-Module-Pluggable \
			www/p5-Catalyst-Runtime>=5.8
TEST_DEPENDS =		devel/p5-Test-Most

PKG_ARCH =		*

.include <bsd.port.mk>
