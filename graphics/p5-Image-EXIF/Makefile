# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:23 sthen Exp $

COMMENT=	interface to read EXIF tags in JPEG images

DISTNAME=	Image-EXIF-2.01
CATEGORIES=	graphics
REVISION=	1

MODULES=	cpan
CPAN_AUTHOR=	ARC

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c exif>=8 perl

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
