# $OpenBSD: Makefile,v 1.34 2020/08/05 13:59:36 tb Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.23
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		2

SHARED_LIBS +=		usb-1.0			1.2	# 2.0

CATEGORIES =		devel

HOMEPAGE =		https://libusb.info

# LGPL 2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/libusb/libusb/releases/download/v${VERSION}/
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVORS =		debug
FLAVOR ?=

CONFIGURE_STYLE =	gnu

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
