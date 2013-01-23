# $OpenBSD: Makefile,v 1.8 2013/01/23 08:03:06 benoit Exp $

COMMENT=	pager utility

DISTNAME=	Data-Page-2.02
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
