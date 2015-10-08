# $OpenBSD: Makefile,v 1.21 2015/10/08 12:02:03 jasper Exp $

COMMENT=	interface to read EXIF tags in JPEG images

SHARED_ONLY=	Yes

DISTNAME=	Image-EXIF-2.01
CATEGORIES=	graphics
REVISION=	0

MODULES=	cpan
CPAN_AUTHOR=	ARC

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c exif>=8

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
