# $OpenBSD: Makefile,v 1.2 2000/06/28 11:49:14 espie Exp $

DISTNAME=		kdesupport-1.1.2	
CATEGORIES=     	x11 converters	
NEED_VERSION=		1.230

MAINTAINER=		seanc@cginfo.sk.ca

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_KDE}	
MASTER_SITE_SUBDIR=	stable/1.1.2/distribution/tar/generic/source/bz2
DIST_SUBDIR=		kde

LIB_DEPENDS=		qt.1.45::x11/qt
#			jpeg.62::graphics/jpeg 
#			gif.4.1::graphics/giflib 

USE_BZIP2=		Yes
SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libjpeg=no \
			--with-libgif=no \
			--with-libgdbm=no \
			--with-qt-includes=/usr/local/include/X11/qt \
			--with-qt-libraries=/usr/local/lib
FAKE=			Yes

.include <bsd.port.mk>
