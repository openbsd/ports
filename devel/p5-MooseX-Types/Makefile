# $OpenBSD: Makefile,v 1.1.1.1 2009/06/19 00:41:14 jim Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
DISTNAME =	MooseX-Types-0.12
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Carp-Clan \
		::devel/p5-Moose \
		::devel/p5-Sub-Install \
		::devel/p5-Sub-Name \
		::devel/p5-namespace-clean
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
