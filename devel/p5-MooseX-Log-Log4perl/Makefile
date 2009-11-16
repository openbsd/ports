# $OpenBSD: Makefile,v 1.1.1.1 2009/11/16 14:10:11 stephan Exp $

COMMENT = 	logging Role with easy interface for Moose

DISTNAME =	MooseX-Log-Log4perl-0.40
CATEGORIES =	devel
MODULES =	cpan

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::devel/p5-Moose \
		::devel/p5-Log-Log4perl

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
