# $OpenBSD: Makefile,v 1.13 2017/12/05 16:25:45 espie Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME =		MooseX-Types-Path-Class-0.07

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

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
