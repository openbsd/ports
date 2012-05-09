# $OpenBSD: Makefile,v 1.2 2012/05/09 09:43:07 mpi Exp $

COMMENT=	libusb-0.1 compatibility layer for libusb1

DISTNAME=	libusb-compat-0.1.4
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  usb                  10.0      # 8.4

MODGNU_SHARED_LIBS= usb '-export-dynamic'

CATEGORIES=	devel

HOMEPAGE=	http://libusb.sourceforge.net/

MAINTAINER=	Martin Pieuchot <mpi@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += usb-1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libusb/}

LIB_DEPENDS=	devel/libusb1

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

MAKE_FLAGS=	LIB=usb

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
