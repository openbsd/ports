# $OpenBSD: Makefile,v 1.7 2012/04/07 14:03:37 sthen Exp $

COMMENT=	load mix-ins or components to your C3-based class

MODULES=	cpan
DISTNAME=	Class-C3-Componentised-1.001000
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-C3 \
		devel/p5-Class-Inspector \
		devel/p5-MRO-Compat
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
