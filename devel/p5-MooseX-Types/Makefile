# $OpenBSD: Makefile,v 1.3 2010/01/12 09:12:30 jasper Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
DISTNAME =	MooseX-Types-0.21
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Carp-Clan \
		:p5-Moose->=0.93:devel/p5-Moose \
		::devel/p5-Sub-Install \
		::devel/p5-Sub-Name \
		::devel/p5-namespace-clean
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
