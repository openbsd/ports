# $OpenBSD: Makefile,v 1.15 2016/03/12 12:11:32 sthen Exp $

COMMENT =		build and install Perl modules

# XXX newer versions require CPAN::Meta 2.142060; revisit after perl updates
DISTNAME =		Module-Build-0.4208
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

TEST_DEPENDS +=		devel/p5-PAR-Dist>=0.17
CONFIGURE_STYLE =	modbuild none

.include <bsd.port.mk>
