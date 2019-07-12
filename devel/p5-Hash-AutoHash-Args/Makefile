# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:56 sthen Exp $

COMMENT=	OO processing of keyword-based argument lists

DISTNAME =	Hash-AutoHash-Args-1.18
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
