# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:06 espie Exp $

COMMENT=	pager utility

DISTNAME=	Data-Page-2.02
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
