# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:48 sthen Exp $

COMMENT=		use standard configuration files

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Config-Std-0.903
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Class-Std
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-Test-Distribution

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
