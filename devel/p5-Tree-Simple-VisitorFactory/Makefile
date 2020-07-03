# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:19 sthen Exp $

COMMENT=	factory for Tree::Simple visitor objects

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tree-Simple-VisitorFactory-0.10
REVISION=	4
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Tree-Simple
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
