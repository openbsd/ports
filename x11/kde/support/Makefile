# $OpenBSD: Makefile,v 1.4 2000/10/22 14:03:57 espie Exp $

DISTNAME=	kdesupport-1.1.2	
CATEGORIES=	x11 converters	
NEED_VERSION=	1.328
MASTER_SITES=	${MASTER_SITE_KDE}	
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
EXTRACT_SUFX=	.tar.bz2
DIST_SUBDIR=	kde

HOMEPAGE=	http://www.kde.org/

LIB_DEPENDS=	qt.1.45::x11/qt
#		jpeg.62::graphics/jpeg 
#		gif.4.1::graphics/giflib 

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-libjpeg \
		--without-libgif \
		--without-libgdbm \
		--with-qt-includes=/usr/local/include/X11/qt \
		--with-qt-libraries=/usr/local/lib

.include <bsd.port.mk>
