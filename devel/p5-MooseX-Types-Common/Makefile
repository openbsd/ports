# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:58 sthen Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
DISTNAME=		MooseX-Types-Common-0.001002
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types
TEST_DEPENDS=	devel/p5-Test-Exception \
			sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
