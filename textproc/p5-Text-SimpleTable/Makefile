# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:51 sthen Exp $

COMMENT=	simple eyecandy ASCII Tables

DISTNAME=	Text-SimpleTable-2.07
CATEGORIES=	textproc
REVISION=	0

# Artistic 2.0
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

TEST_DEPENDS=	converters/p5-Unicode-LineBreak

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
