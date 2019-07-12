# $OpenBSD: Makefile,v 1.20 2019/07/12 20:50:07 sthen Exp $

COMMENT=	expand template text with embedded perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-Template-1.55
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Test-More-UTF8 \
		devel/p5-Test-Warnings

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
