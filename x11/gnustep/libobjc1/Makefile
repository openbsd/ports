# $OpenBSD: Makefile,v 1.1.1.1 2011/06/28 16:06:20 sebastia Exp $

COMMENT =	traditional GNUstep objective-c runtime

DISTNAME =	gnustep-objc-1.6.0
CATEGORIES =	devel
SHARED_LIBS +=	gobjc 0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES +=		x11/gnustep
MODGNUSTEP_NEEDS_BASE = No
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	libgobjc_INTERFACE_VERSION=${LIBgobjc_VERSION} \
		CLIBRARY_NAME=libgobjc \
		libgobjc_HEADER_FILES_INSTALL_DIR=gnustep/objc

.include <bsd.port.mk>
