# $OpenBSD: Makefile,v 1.18 2010/10/18 18:13:14 espie Exp $

COMMENT=	read and write meta information in image/audio/video files

DISTNAME=	Image-ExifTool-8.25
CATEGORIES=	graphics

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
