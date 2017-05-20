# $OpenBSD: Makefile,v 1.41 2017/05/20 07:43:10 benoit Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-10.50
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
