# $OpenBSD: Makefile,v 1.19 2019/03/31 20:58:19 afresh1 Exp $

COMMENT=	expand template text with embedded perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-Template-1.55
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Test-More-UTF8 \
		devel/p5-Test-Warnings

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
