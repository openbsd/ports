# $OpenBSD: Makefile,v 1.2 2004/01/17 15:58:08 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"object-oriented Perl interface to ImageMagick"

VERSION=	5.2.9
DISTNAME=	ImageMagick-${VERSION}
PKGNAME=	p5-PerlMagick-${VERSION}
CATEGORIES=	graphics devel
MASTER_SITES=	ftp://openbsd.comstyle.com/pub/brad/source/

HOMEPAGE=	http://www.simplesystems.org/ImageMagick/

BUILD_DEPENDS=	:ImageMagick-${VERSION}:graphics/ImageMagick
RUN_DEPENDS=	:ImageMagick-${VERSION}:graphics/ImageMagick
LIB_DEPENDS=	Magick.5::graphics/ImageMagick

MAINTAINER=	Sam Smith <s@msmith.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

WRKSRC=	${WRKDIST}/PerlMagick

.include <bsd.port.mk>
