# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:14 espie Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.34
CATEGORIES =		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
TEST_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
