# $OpenBSD: Makefile,v 1.2 2009/06/19 12:36:10 simon Exp $

COMMENT=        load mix-ins or components to your C3-based class

MODULES=	cpan
DISTNAME=	Class-C3-Componentised-1.0005
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Class-C3 \
		::devel/p5-Class-Inspector \
		::devel/p5-MRO-Compat
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
