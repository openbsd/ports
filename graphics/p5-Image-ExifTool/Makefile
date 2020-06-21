# $OpenBSD: Makefile,v 1.49 2020/06/21 18:00:32 rpointel Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-12.00
CATEGORIES=	graphics

HOMEPAGE=	https://exiftool.org/

MAINTAINER=	Remi Pointel <rpointel@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
