# $OpenBSD: Makefile,v 1.25 2014/12/01 14:28:29 benoit Exp $

COMMENT=	perl module for getting image information

MODULES=	cpan
DISTNAME =	Image-Info-1.36
CATEGORIES=	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-IO-String>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
