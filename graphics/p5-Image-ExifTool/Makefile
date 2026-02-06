COMMENT=	read and write meta information in image/audio/video files

DISTNAME =	Image-ExifTool-13.49
CATEGORIES=	graphics

HOMEPAGE=	https://exiftool.org/

# perl
PERMIT_PACKAGE=	Yes

# production releases are uploaded to CPAN
# if it's only on sourceforge then it's a development release
# https://exiftool.org/history.html
SITES=		${SITE_PERL_CPAN:=Image/} \
		${SITE_SOURCEFORGE:=exiftool/}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
