# $OpenBSD: Makefile,v 1.9 2014/03/22 14:00:43 jasper Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME=		MooseX-Types-Path-Class-0.05
REVISION=		2

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Moose>=2.1204 \
			devel/p5-MooseX-Types \
			devel/p5-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
