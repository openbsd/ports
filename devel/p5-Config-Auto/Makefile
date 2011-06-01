# $OpenBSD: Makefile,v 1.5 2011/06/01 17:41:52 jasper Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.34
CATEGORIES =		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-IO-String \
			devel/p5-YAML
REGRESS_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
