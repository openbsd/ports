# $OpenBSD: Makefile,v 1.2 2012/01/05 15:16:18 sebastia Exp $

COMMENT =	traditional GNUstep objective-c runtime

VERSION =	1.7.2
DISTNAME =	gnustep-objc-${VERSION}
PKGNAME =	gnustep-libobjc1-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=	objc1 0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES +=		x11/gnustep
MODGNUSTEP_NEEDS_BASE = No
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	libobjc1_INTERFACE_VERSION=${LIBobjc1_VERSION} \
		CLIBRARY_NAME=libobjc1 \
		ADDITIONAL_CCFLAGS="${CFLAGS}" \
		ADDITIONAL_CPPFLAGS="${CPPFLAGS}" \
		ADDITIONAL_LDFLAGS="${LDFLAGS}" \
		libobjc1_HEADER_FILES_INSTALL_DIR=gnustep/objc

.include <bsd.port.mk>
