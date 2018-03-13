# $OpenBSD: Makefile,v 1.42 2018/03/13 15:27:45 giovanni Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-10.80
CATEGORIES=	graphics

HOMEPAGE=	http://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Patrick Keshishian <pkeshish@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
