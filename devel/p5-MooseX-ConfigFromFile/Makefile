# $OpenBSD: Makefile,v 1.9 2019/02/06 15:53:35 cwen Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-ConfigFromFile-0.14
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

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
