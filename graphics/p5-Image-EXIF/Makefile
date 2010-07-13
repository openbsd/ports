# $OpenBSD: Makefile,v 1.9 2010/07/13 19:46:13 sthen Exp $

COMMENT=	interface to read EXIF tags in JPEG images

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-0.98.6
REVISION=	1
CATEGORIES=	graphics

HOMEPAGE=       http://search.cpan.org/dist/Image-EXIF/

MAINTAINER=	Dan Weeks <danimal@danimal.org>
MODULES=	cpan

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	exif.>=8::graphics/libexif

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
