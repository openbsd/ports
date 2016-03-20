# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:24 naddy Exp $

COMMENT=	OO processing of keyword-based argument lists

DISTNAME =	Hash-AutoHash-Args-1.18
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
