# $OpenBSD: Makefile,v 1.19 2010/10/29 12:42:52 ajacoutot Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-8.25
CATEGORIES=	graphics

REVISION=	0

HOMEPAGE=	http://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Patrick Keshishian <pkeshish@gmail.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
