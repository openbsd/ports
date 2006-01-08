# $OpenBSD: Makefile,v 1.10 2006/01/08 00:29:37 steven Exp $

COMMENT=	"extract digital camera info tags from JPEG images"

DISTNAME=	libexif-0.5.9
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	exif	9.0
CATEGORIES=	graphics

HOMEPAGE=	http://sourceforge.net/projects/libexif/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

BUILD_DEPENDS=	::devel/gettext
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
