# $OpenBSD: Makefile,v 1.23 2019/07/12 21:02:22 sthen Exp $

COMMENT=	interface to read EXIF tags in JPEG images

DISTNAME=	Image-EXIF-2.01
CATEGORIES=	graphics
REVISION=	0

MODULES=	cpan
CPAN_AUTHOR=	ARC

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c exif>=8 perl

LIB_DEPENDS=	graphics/libexif

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
