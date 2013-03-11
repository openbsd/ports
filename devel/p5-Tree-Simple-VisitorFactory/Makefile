# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:23 espie Exp $

COMMENT=	factory for Tree::Simple visitor objects

MODULES=	cpan
DISTNAME=	Tree-Simple-VisitorFactory-0.10
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Tree-Simple
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
