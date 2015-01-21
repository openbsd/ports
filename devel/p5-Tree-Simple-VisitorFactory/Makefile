# $OpenBSD: Makefile,v 1.11 2015/01/21 14:28:00 sthen Exp $

COMMENT=	factory for Tree::Simple visitor objects

MODULES=	cpan
DISTNAME=	Tree-Simple-VisitorFactory-0.10
REVISION=	2
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Tree-Simple
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
