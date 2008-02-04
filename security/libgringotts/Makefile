# $OpenBSD $

COMMENT=	encryption backend

DISTNAME=	libgringotts-1.2.1
SHARED_LIBS=	gringotts 0.0	# .2.7

EXTRACT_SUFX= 	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m mhash z

MASTER_SITES=	http://download.berlios.de/gringotts/

LIB_DEPENDS=	mcrypt.>=8::security/libmcrypt \
		bz2.>=10::archivers/bzip2

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-x

.include <bsd.port.mk>
