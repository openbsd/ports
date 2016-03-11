# $OpenBSD: Makefile,v 1.25 2016/03/11 19:59:13 naddy Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.20
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}

SHARED_LIBS +=		usb-1.0			1.1	# 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.libusb.info

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libusb/}
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
