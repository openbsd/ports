# $OpenBSD: Makefile,v 1.18 2009/10/12 09:14:18 sthen Exp $

COMMENT=	extract digital camera info tags from JPEG images

DISTNAME=	libexif-0.6.18
SHARED_LIBS=	exif	12.3
CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/
MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libexif/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
WANTLIB=		m

.include <bsd.port.mk>
