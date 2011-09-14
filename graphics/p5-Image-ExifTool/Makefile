# $OpenBSD: Makefile,v 1.23 2011/09/14 07:58:27 jasper Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-8.60
CATEGORIES=	graphics

HOMEPAGE=	http://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Patrick Keshishian <pkeshish@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
