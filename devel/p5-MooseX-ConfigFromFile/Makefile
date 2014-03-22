# $OpenBSD: Makefile,v 1.6 2014/03/22 14:08:56 jasper Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
DISTNAME=		MooseX-ConfigFromFile-0.02
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Module-Runtime

.include <bsd.port.mk>
