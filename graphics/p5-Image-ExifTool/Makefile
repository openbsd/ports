# $OpenBSD: Makefile,v 1.3 2006/07/30 08:47:21 steven Exp $

COMMENT=	"read and write meta information in image/audio/video files"

DISTNAME=	Image-ExifTool-6.29
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

HOMEPAGE=	http://owl.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Patrick Keshishian <pkeshish@gmail.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		${HOMEPAGE}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
