# $OpenBSD: Makefile,v 1.3 2014/03/22 14:08:56 jasper Exp $

COMMENT =	role for daemonizing your Moose based application

MODULES =	cpan
DISTNAME =	MooseX-Daemonize-0.13
REVISION =	0
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-MooseX-Getopt>=0.62 \
		devel/p5-MooseX-Types-Path-Class
TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-MRO-Compat

.include <bsd.port.mk>
