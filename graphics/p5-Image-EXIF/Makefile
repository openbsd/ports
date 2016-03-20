# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:44 naddy Exp $

COMMENT=	interface to read EXIF tags in JPEG images

DISTNAME=	Image-EXIF-2.01
CATEGORIES=	graphics
REVISION=	0

MODULES=	cpan
CPAN_AUTHOR=	ARC

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c exif>=8 perl

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
