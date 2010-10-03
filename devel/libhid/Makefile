# $OpenBSD: Makefile,v 1.1.1.1 2010/10/03 21:10:24 armani Exp $

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
SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
