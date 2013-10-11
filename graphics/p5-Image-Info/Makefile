# $OpenBSD: Makefile,v 1.24 2013/10/11 23:49:51 naddy Exp $

COMMENT=	perl module for getting image information

MODULES=	cpan
DISTNAME=	Image-Info-1.28
REVISION=	0
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-IO-String>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
