# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:19 espie Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
DISTNAME=		MooseX-Getopt-0.37
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive \
			devel/p5-Moose \
			devel/p5-MooseX-Role-Parameterized
TEST_DEPENDS=	devel/p5-MooseX-ConfigFromFile \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Warn

.include <bsd.port.mk>
