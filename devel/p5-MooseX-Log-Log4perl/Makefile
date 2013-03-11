# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:19 espie Exp $

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

.include <bsd.port.mk>
