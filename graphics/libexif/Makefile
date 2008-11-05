# $OpenBSD: Makefile,v 1.16 2008/11/05 13:11:14 jasper Exp $

COMMENT=	extract digital camera info tags from JPEG images

DISTNAME=	libexif-0.6.16
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	exif	12.2
CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPL
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
