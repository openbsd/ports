# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT =	emulate Class::Accessor::Fast behavior using Moose

MODULES =	cpan
DISTNAME =	MooseX-Emulate-Class-Accessor-Fast-0.00903
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Moose>=0.74 \
			devel/p5-namespace-clean
REGRESS_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
