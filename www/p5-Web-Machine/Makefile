# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:37:32 robert Exp $

COMMENT =	perl port of Webmachine

DISTNAME =	Web-Machine-0.17

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-IO-Handle-Util \
			www/p5-HTTP-Headers-ActionPack
TEST_DEPENDS =		devel/p5-Test-FailWarnings \
			converters/p5-Cpanel-JSON-XS

.include <bsd.port.mk>
