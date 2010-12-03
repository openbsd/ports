# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT = 	logging Role with easy interface for Moose

DISTNAME =	MooseX-Log-Log4perl-0.42
REVISION =	0
CATEGORIES =	devel
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-Log-Log4perl \
		devel/p5-IO-stringy

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
