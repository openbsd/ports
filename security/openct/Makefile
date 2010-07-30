# $OpenBSD: Makefile,v 1.14 2010/07/30 14:28:20 lum Exp $

COMMENT=	drivers for several smart card readers

DISTNAME=	openct-0.6.15
REVISION=	3
CATEGORIES=	security
SHARED_LIBS=	openct	1.1

HOMEPAGE=	http://www.opensc-project.org/openct/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.opensc-project.org/files/openct/

WANTLIB=	c usb.>=8 ltdl.>=4
LIB_DEPENDS=	::devel/libusb \
		::devel/libtool,-ltdl

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--with-common-dir=${LOCALBASE} \
		--enable-usb \
		--with-daemon-user=_openct \
		--with-daemon-groups=_openct
	
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread \
		LTLIB_CFLAGS="-I${LOCALBASE}/include" \
		LTLIB_LIBS="-L${LOCALBASE}/lib -lltdl"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openct
	${INSTALL_DATA} ${WRKSRC}/etc/openct.conf \
		${PREFIX}/share/examples/openct

.include <bsd.port.mk>
