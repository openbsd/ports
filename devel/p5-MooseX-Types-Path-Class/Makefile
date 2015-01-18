# $OpenBSD: Makefile,v 1.10 2015/01/18 10:34:39 benoit Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME =		MooseX-Types-Path-Class-0.06

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Moose>=2.1204 \
			devel/p5-MooseX-Types \
			devel/p5-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
