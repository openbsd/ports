# $OpenBSD: Makefile,v 1.43 2018/06/13 12:15:47 rpointel Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-11.01
CATEGORIES=	graphics

HOMEPAGE=	http://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Remi Pointel <rpointel@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
