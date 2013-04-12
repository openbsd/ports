# $OpenBSD: Makefile,v 1.18 2013/04/12 08:22:10 mpi Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.9
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		6
SHARED_LIBS +=  	usb-1.0                   1.0 # 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.libusb.org

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libusb/}
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
