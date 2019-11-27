# $OpenBSD: Makefile,v 1.31 2019/11/27 20:15:17 sthen Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.23
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS +=		usb-1.0			1.2	# 2.0

CATEGORIES =		devel

HOMEPAGE =		http://www.libusb.info

# LGPL 2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVORS =		debug
FLAVOR ?=

MASTER_SITES =		https://github.com/libusb/libusb/releases/download/v${VERSION}/

CONFIGURE_STYLE =	gnu

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug-log \
			--enable-examples-build
.endif

.include <bsd.port.mk>
