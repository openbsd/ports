# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:02 sthen Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME =		MooseX-LazyRequire-0.11
REVISION =		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS =		devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/p5-Module-Build-Tiny
TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
