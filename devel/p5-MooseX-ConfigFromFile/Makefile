# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:01 sthen Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-ConfigFromFile-0.14
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS =	Yes
REVISION=		1

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-MooseX-Types-Path-Class \
			devel/p5-Path-Tiny
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-MooseX-Types-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Without-Module

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
