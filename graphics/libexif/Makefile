# $OpenBSD: Makefile,v 1.13 2007/05/16 22:18:42 steven Exp $

COMMENT=	"extract digital camera info tags from JPEG images"

DISTNAME=	libexif-0.6.14
SHARED_LIBS=	exif	12.1
CATEGORIES=	graphics

HOMEPAGE=	http://sourceforge.net/projects/libexif/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}
EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=	Yes
WANTLIB=	m

.include <bsd.port.mk>
