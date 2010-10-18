# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:53 espie Exp $

COMMENT =	user-space USB HID access library written in C

DISTNAME =	libhid-0.2.16
SHARED_LIBS =	hid	0.0

CATEGORIES =	devel

HOMEPAGE =	http://libhid.alioth.debian.org/

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	https://alioth.debian.org/frs/download.php/1958/

WANTLIB += 	c usb

LIB_DEPENDS = 	::devel/libusb

USE_GMAKE = 		Yes
USE_LIBTOOL =		Yes
USE_GROFF =	Yes
SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS +=	--disable-swig

.include <bsd.port.mk>
