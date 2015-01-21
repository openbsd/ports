# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:56 sthen Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.34
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
TEST_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
