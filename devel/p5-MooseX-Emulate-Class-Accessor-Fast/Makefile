# $OpenBSD: Makefile,v 1.1.1.1 2009/06/19 00:47:27 jim Exp $

COMMENT =	emulate Class::Accessor::Fast behavior using Moose

MODULES =	cpan
DISTNAME =	MooseX-Emulate-Class-Accessor-Fast-0.00900
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		:p5-Moose->=0.74:devel/p5-Moose \
			::devel/p5-namespace-clean
REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
