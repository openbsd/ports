# $OpenBSD: Makefile,v 1.19 2014/07/12 18:36:52 giovanni Exp $

COMMENT=	interface to read EXIF tags in JPEG images

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-2.01
CATEGORIES=	graphics

MODULES=	cpan
CPAN_AUTHOR=	ARC

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c exif>=8

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
