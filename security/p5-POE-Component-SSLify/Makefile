# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:08 sthen Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		POE-Component-SSLify-1.012
CATEGORIES=		net security

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		devel/p5-Module-Build-Tiny>=0.039
RUN_DEPENDS=		devel/p5-POE>=1.267 \
			devel/p5-Task-Weaken>=1.03 \
			security/p5-Net_SSLeay>=1.36
TEST_DEPENDS=		devel/p5-IO-Prompt-Tiny \
			devel/p5-Test-FailWarnings
TEST_ENV=		AUTOMATED_TESTING=y

.include <bsd.port.mk>
