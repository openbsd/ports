# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
DISTNAME =	MooseX-MethodAttributes-0.23
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

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
