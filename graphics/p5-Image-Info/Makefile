# $OpenBSD: Makefile,v 1.16 2006/12/02 18:45:54 espie Exp $

COMMENT=	"perl module for getting image information"

MODULES=	cpan
VERSION=	1.23
DISTNAME=	Image-Info-${VERSION}
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-String->=1.08:devel/p5-IO-String
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=::textproc/p5-XML-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
