# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:26 espie Exp $

COMMENT=	drivers for several smart card readers

DISTNAME=	openct-0.6.20
CATEGORIES=	security
SHARED_LIBS=	openct	1.1
REVISION=	1

HOMEPAGE=	http://www.opensc-project.org/openct/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.opensc-project.org/files/openct/

WANTLIB += c ltdl pthread usb usb-1.0

LIB_DEPENDS=	devel/libusb-compat \
		devel/libtool,-ltdl

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--enable-usb \
		--with-daemon-user=_openct \
		--with-daemon-groups=_openct

FAKE_FLAGS=	mandir="${PREFIX}/man/"

CONFIGURE_ENV=	PTHREAD_LIBS=-pthread \
		LTLIB_CFLAGS="-I${LOCALBASE}/include" \
		LTLIB_LIBS="-L${LOCALBASE}/lib -lltdl"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openct
	${INSTALL_DATA} ${WRKSRC}/etc/openct.conf \
		${PREFIX}/share/examples/openct

.include <bsd.port.mk>
