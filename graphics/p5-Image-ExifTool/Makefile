# $OpenBSD: Makefile,v 1.52 2021/08/15 16:49:55 tj Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-12.30
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
