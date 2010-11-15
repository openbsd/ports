# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:02 espie Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.20
CATEGORIES =		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Config-IniFiles \
			devel/p5-YAML
REGRESS_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
