# $OpenBSD: Makefile,v 1.20 2010/11/17 08:05:15 espie Exp $

COMMENT=	perl module for getting image information

MODULES=	cpan
DISTNAME=	Image-Info-1.28
CATEGORIES=	graphics
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-IO-String>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=::textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
