# $OpenBSD: Makefile,v 1.33 2020/08/05 11:35:16 stsp Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.23
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		1

SHARED_LIBS +=		usb-1.0			1.2	# 2.0

CATEGORIES =		devel

HOMEPAGE =		https://www.libusb.info

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
