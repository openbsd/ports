# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:03 espie Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
DISTNAME =	MooseX-MethodAttributes-0.23
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Moose \
		::devel/p5-MooseX-Types \
		::devel/p5-namespace-clean

REGRESS_DEPENDS =::devel/p5-MooseX-Role-Parameterized \
		::devel/p5-Test-Exception \
		::devel/p5-namespace-autoclean

.include <bsd.port.mk>
