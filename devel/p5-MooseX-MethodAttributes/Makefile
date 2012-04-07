# $OpenBSD: Makefile,v 1.7 2012/04/07 14:28:57 sthen Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
DISTNAME =	MooseX-MethodAttributes-0.25
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-clean

REGRESS_DEPENDS =devel/p5-MooseX-Role-Parameterized \
		devel/p5-Test-Exception \
		devel/p5-namespace-autoclean

.include <bsd.port.mk>
