# $OpenBSD: Makefile,v 1.1.1.1 2006/05/02 20:52:34 steven Exp $

COMMENT=	"read and write meta information in image/audio/video files"

DISTNAME=	Image-ExifTool-6.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

HOMEPAGE=	http://www.sno.phy.queensu.ca/~phil/exiftool/

MAINTAINER=	Patrick Keshishian <pkeshish@gmail.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/} \
		http://www.sno.phy.queensu.ca/~phil/exiftool/

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
