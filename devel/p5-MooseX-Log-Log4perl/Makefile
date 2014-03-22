# $OpenBSD: Makefile,v 1.10 2014/03/22 14:08:56 jasper Exp $

COMMENT = 	logging Role with easy interface for Moose

DISTNAME =	MooseX-Log-Log4perl-0.42
REVISION =	1
CATEGORIES =	devel
MODULES =	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-Log-Log4perl \
		devel/p5-IO-stringy
BUILD_DEPENDS = ${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-Module-Runtime \
		devel/p5-MRO-Compat

.include <bsd.port.mk>
