# $OpenBSD: Makefile,v 1.10 2012/04/23 08:48:08 mpi Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.9
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		0
SHARED_LIBS +=  	usb-1.0                   1.0 # 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.libusb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libusb/}
EXTRACT_SUFX =		.tar.bz2

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
