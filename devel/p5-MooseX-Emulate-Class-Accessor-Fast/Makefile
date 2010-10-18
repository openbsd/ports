# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:03 espie Exp $

COMMENT =	emulate Class::Accessor::Fast behavior using Moose

MODULES =	cpan
DISTNAME =	MooseX-Emulate-Class-Accessor-Fast-0.00903
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		:p5-Moose->=0.74:devel/p5-Moose \
			::devel/p5-namespace-clean
REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
