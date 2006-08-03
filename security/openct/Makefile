# $OpenBSD: Makefile,v 1.7 2006/08/03 23:55:10 espie Exp $

COMMENT=	"drivers for several smart card readers"

DISTNAME=	openct-0.6.6
PKGNAME=	${DISTNAME}p3
CATEGORIES=	security
SHARED_LIBS=	openct	1.0

HOMEPAGE=	http://www.opensc-project.org/openct/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.opensc-project.org/files/openct/

WANTLIB=	c pthread
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	usb.>=8::devel/libusb \
		ltdl.>=4::devel/libtool,-ltdl

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--with-common-dir=${LOCALBASE}
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openct
	${INSTALL_DATA} ${WRKSRC}/etc/openct.conf \
		${PREFIX}/share/examples/openct

.include <bsd.port.mk>
