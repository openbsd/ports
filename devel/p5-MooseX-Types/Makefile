# $OpenBSD: Makefile,v 1.6 2010/11/26 07:19:01 espie Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
DISTNAME =	MooseX-Types-0.21
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		devel/p5-Moose>=0.93 \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name \
		devel/p5-namespace-clean
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
