# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:19 sthen Exp $

COMMENT=	simple tree object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tree-Simple-1.18
REVISION=	2
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

TEST_DEPENDS= devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle>=1.02

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
