# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:02 sthen Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME=		MooseX-Types-Path-Class-0.09

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-MooseX-Getopt \
			devel/p5-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Module-Build-Tiny
TEST_DEPENDS=		devel/p5-Moose \
			devel/p5-Test-Needs

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
