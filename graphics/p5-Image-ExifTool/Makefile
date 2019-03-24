# $OpenBSD: Makefile,v 1.45 2019/03/24 08:57:03 rpointel Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-11.30
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
