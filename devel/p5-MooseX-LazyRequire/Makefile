# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:29 naddy Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME =		MooseX-LazyRequire-0.11

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS =		devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Module-Build-Tiny
TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
