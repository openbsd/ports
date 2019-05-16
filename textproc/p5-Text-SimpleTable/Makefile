# $OpenBSD: Makefile,v 1.14 2019/05/16 21:11:47 cwen Exp $

COMMENT=	simple eyecandy ASCII Tables

DISTNAME=	Text-SimpleTable-2.07
CATEGORIES=	textproc

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

TEST_DEPENDS=	converters/p5-Unicode-LineBreak

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
