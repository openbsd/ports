# $OpenBSD: Makefile,v 1.48 2020/02/07 05:50:21 rpointel Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-11.85
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
