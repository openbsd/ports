# $OpenBSD: Makefile,v 1.21 2020/02/23 07:42:39 benoit Exp $

COMMENT=	expand template text with embedded perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Text-Template-1.58
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Test-More-UTF8 \
		devel/p5-Test-Warnings

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
