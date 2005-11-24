# $OpenBSD: Makefile,v 1.2 2005/11/24 12:23:04 markus Exp $

COMMENT=	"drivers for several smart card readers"

DISTNAME=	openct-0.6.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://www.opensc.org/openct

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.opensc.org/files/

WANTLIB=	c pthread
LIB_DEPENDS=	usb.8::devel/libusb \
		ltdl.4::devel/libtool

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
