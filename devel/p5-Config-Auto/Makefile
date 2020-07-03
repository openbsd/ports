# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:44 sthen Exp $

COMMENT =		magical config file parser

MODULES =		cpan
PKG_ARCH =		*

DISTNAME =		Config-Auto-0.44
CATEGORIES =		devel
REVISION =		0

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
