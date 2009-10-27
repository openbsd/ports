# $OpenBSD: Makefile,v 1.1.1.1 2009/10/27 00:33:37 jim Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
DISTNAME =	MooseX-Params-Validate-0.12
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Devel-Caller \
		::devel/p5-Moose \
		::devel/p5-Params-Validate \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
