# $OpenBSD: Makefile,v 1.15 2012/08/23 15:50:05 sthen Exp $

COMMENT=	interface to read EXIF tags in JPEG images

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-0.98.6
REVISION=	3
CATEGORIES=	graphics

MAINTAINER=	Dan Weeks <danimal@danimal.org>
MODULES=	cpan
USE_GROFF =	Yes

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c exif>=8

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
