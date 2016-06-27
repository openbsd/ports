# $OpenBSD: Makefile,v 1.39 2016/06/27 09:05:05 sthen Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-10.20
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
