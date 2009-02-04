# $OpenBSD: Makefile,v 1.1.1.1 2009/02/04 08:37:06 simon Exp $

COMMENT =		magical config file parser

MODULES =		cpan

DISTNAME =		Config-Auto-0.20
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::devel/p5-Config-IniFiles \
			::devel/p5-YAML
REGRESS_DEPENDS =	::devel/p5-Test-Pod

.include <bsd.port.mk>
