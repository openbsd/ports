# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:07 sthen Exp $

COMMENT=	simple eyecandy ASCII Tables

DISTNAME=	Text-SimpleTable-2.07
CATEGORIES=	textproc

# Artistic 2.0
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

TEST_DEPENDS=	converters/p5-Unicode-LineBreak

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
