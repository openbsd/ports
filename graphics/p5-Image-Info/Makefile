# $OpenBSD: Makefile,v 1.18 2008/10/08 12:54:46 jasper Exp $

COMMENT=	perl module for getting image information

MODULES=	cpan
DISTNAME=	Image-Info-1.28
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-String->=1.08:devel/p5-IO-String
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=::textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
