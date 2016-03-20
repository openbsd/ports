# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:30 naddy Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME =		MooseX-Types-Path-Class-0.07

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose>=2.1204 \
			devel/p5-MooseX-Types \
			devel/p5-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
