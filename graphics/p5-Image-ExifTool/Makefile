# $OpenBSD: Makefile,v 1.47 2019/10/27 08:17:46 rpointel Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-11.70
CATEGORIES=	graphics

HOMEPAGE=	https://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Remi Pointel <rpointel@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
