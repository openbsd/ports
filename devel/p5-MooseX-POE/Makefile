# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:02 sthen Exp $

COMMENT=		the Illicit Love Child of Moose and POE

DISTNAME=		MooseX-POE-0.215
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose>=2.0002 \
			devel/p5-POE>=1.310

TEST_DEPENDS=		devel/p5-MooseX-Daemonize \
			devel/p5-MooseX-Declare>=0.35 \
			devel/p5-Test-Fatal

MAKE_ENV=		TEST_POD=1
TEST_ENV=		RELEASE_TESTING=1

.include <bsd.port.mk>
