# $OpenBSD: Makefile,v 1.8 2015/09/02 19:52:40 benoit Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.44
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
TEST_DEPENDS =		devel/p5-Test-Pod

.include <bsd.port.mk>
