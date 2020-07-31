# $OpenBSD: Makefile,v 1.13 2020/07/31 14:00:24 benoit Exp $

COMMENT=		temporary files support for testing

DISTNAME =		Test-TempDir-0.11
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE =	modbuild tiny

RUN_DEPENDS=		devel/p5-MooseX-Types-Path-Class

TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Directory-Scratch

.include <bsd.port.mk>
