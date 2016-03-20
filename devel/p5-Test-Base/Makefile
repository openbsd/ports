# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:36 naddy Exp $

COMMENT= 	data driven test framework

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Base-0.88
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Spiffy

TEST_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-YAML

.include <bsd.port.mk>
