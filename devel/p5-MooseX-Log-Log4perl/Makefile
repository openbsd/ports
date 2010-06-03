# $OpenBSD: Makefile,v 1.2 2010/06/03 14:18:20 sthen Exp $

COMMENT = 	logging Role with easy interface for Moose

DISTNAME =	MooseX-Log-Log4perl-0.40
PKGNAME =	p5-${DISTNAME}p0
CATEGORIES =	devel
MODULES =	cpan

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::devel/p5-Moose \
		::devel/p5-Log-Log4perl \
		::devel/p5-IO-stringy

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
