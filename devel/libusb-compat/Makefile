# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:14 sthen Exp $

COMMENT=	libusb-0.1 compatibility layer for libusb1

DISTNAME=	libusb-compat-0.1.5
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

SHARED_LIBS +=  usb                  10.0      # 8.4

MODGNU_SHARED_LIBS= usb '-export-dynamic'

CATEGORIES=	devel

HOMEPAGE=	http://libusb.sourceforge.net/

MAINTAINER=	Martin Pieuchot <mpi@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += pthread usb-1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libusb/}

LIB_DEPENDS=	devel/libusb1

CONFIGURE_STYLE=gnu

MAKE_FLAGS=	LIB=usb

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
