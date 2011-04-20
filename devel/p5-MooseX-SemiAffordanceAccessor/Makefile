# $OpenBSD: Makefile,v 1.5 2011/04/20 19:51:34 jasper Exp $

COMMENT =	name your accessors foo() and set_foo()

MODULES =	cpan
DISTNAME =	MooseX-SemiAffordanceAccessor-0.09
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Moose

MAKE_ENV +=		TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
