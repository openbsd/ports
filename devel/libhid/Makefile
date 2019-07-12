# $OpenBSD: Makefile,v 1.14 2019/07/12 21:02:14 sthen Exp $

COMMENT =	user-space USB HID access library written in C

DISTNAME =	libhid-0.2.16
REVISION =	2

SHARED_LIBS =	hid	0.0

CATEGORIES =	devel

HOMEPAGE =	https://directory.fsf.org/wiki/Libhid

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += 	c usb pthread usb-1.0

MASTER_SITES=	https://alioth-archive.debian.org/releases/libhid/libhid/0.2.16/

LIB_DEPENDS = 	devel/libusb-compat

USE_GMAKE = 		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	--disable-swig --without-doxygen --disable-werror

.include <bsd.port.mk>
