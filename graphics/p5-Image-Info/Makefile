# $OpenBSD: Makefile,v 1.23 2013/03/11 11:10:54 espie Exp $

COMMENT=	perl module for getting image information

MODULES=	cpan
DISTNAME=	Image-Info-1.28
REVISION=	0
CATEGORIES=	graphics
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-IO-String>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
