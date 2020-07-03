# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:51 sthen Exp $

COMMENT=	expand template text with embedded perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Text-Template-1.58
CATEGORIES=	textproc
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Test-More-UTF8 \
		devel/p5-Test-Warnings

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
