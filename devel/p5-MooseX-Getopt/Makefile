# $OpenBSD: Makefile,v 1.7 2014/03/22 14:03:20 jasper Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
DISTNAME=		MooseX-Getopt-0.62
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive \
			devel/p5-Moose \
			devel/p5-MooseX-Role-Parameterized>=1.02
TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Module-Runtime \
			devel/p5-MRO-Compat \
			devel/p5-MooseX-ConfigFromFile \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Trap \
			devel/p5-Test-Warn

.include <bsd.port.mk>
