COMMENT =		library for USB device access from userspace

VERSION =		1.0.26
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}

SHARED_LIBS +=  usb-1.0              2.0      # 3.0

CATEGORIES =		devel

HOMEPAGE =		https://libusb.info

# LGPL 2.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/libusb/libusb/releases/download/v${VERSION}/
EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

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
