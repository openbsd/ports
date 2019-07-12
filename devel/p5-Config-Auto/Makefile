# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:48 sthen Exp $

COMMENT =		magical config file parser

MODULES =		cpan
PKG_ARCH =		*

DISTNAME =		Config-Auto-0.44
CATEGORIES =		devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
