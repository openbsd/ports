# $OpenBSD: Makefile,v 1.17 2013/10/11 23:49:51 naddy Exp $

COMMENT=	interface to read EXIF tags in JPEG images

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-0.98.6
REVISION=	3
CATEGORIES=	graphics

MAINTAINER=	Dan Weeks <danimal@danimal.org>
MODULES=	cpan

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c exif>=8

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
