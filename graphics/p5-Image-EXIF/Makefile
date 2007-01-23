# $OpenBSD: Makefile,v 1.6 2007/01/23 22:30:51 espie Exp $

COMMENT=	"interface to read EXIF tags in JPEG images"

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-0.98.6
PKGNAME=	p5-${DISTNAME}p0
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
