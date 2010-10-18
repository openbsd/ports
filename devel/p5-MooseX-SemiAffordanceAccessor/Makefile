# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:04 espie Exp $

COMMENT =	name your accessors foo() and set_foo()

MODULES =	cpan
DISTNAME =	MooseX-SemiAffordanceAccessor-0.05
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Moose

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
