# $OpenBSD: Makefile,v 1.16 2013/03/11 11:10:54 espie Exp $

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

WANTLIB += c exif>=8

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
