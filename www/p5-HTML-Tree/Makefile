# $OpenBSD: Makefile,v 1.25 2013/03/11 11:44:46 espie Exp $

COMMENT=	perl parser that builds an HTML tree

MODULES=	cpan
DISTNAME=	HTML-Tree-3.23
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=2.19
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>
