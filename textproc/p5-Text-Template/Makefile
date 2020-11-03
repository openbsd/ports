# $OpenBSD: Makefile,v 1.23 2020/11/03 15:59:36 benoit Exp $

COMMENT=	expand template text with embedded perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Text-Template-1.59
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Test-More-UTF8 \
		devel/p5-Test-Warnings

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
