# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:19 espie Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME=		MooseX-Types-Path-Class-0.05
REVISION=		1

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-Path-Class \
			devel/p5-Class-MOP
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
