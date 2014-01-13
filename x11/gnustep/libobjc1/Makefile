# $OpenBSD: Makefile,v 1.3 2014/01/13 00:20:01 sebastia Exp $

COMMENT =	traditional GNUstep objective-c runtime

# note: this port does not use the gnustep module
VERSION =	1.7.2
DISTNAME =	gnustep-objc-${VERSION}
PKGNAME =	gnustep-libobjc1-${VERSION}
CATEGORIES =	devel x11/gnustep
SHARED_LIBS +=	objc1 0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

USE_GMAKE ?=    Yes
MAKE_FILE ?=    GNUmakefile

MAKE_FLAGS +=	libobjc1_INTERFACE_VERSION=${LIBobjc1_VERSION} \
		CLIBRARY_NAME=libobjc1 \
		ADDITIONAL_CCFLAGS="${CFLAGS}" \
		ADDITIONAL_CPPFLAGS="${CPPFLAGS}" \
		ADDITIONAL_LDFLAGS="${LDFLAGS}" \
		libobjc1_HEADER_FILES_INSTALL_DIR=gnustep/objc

MAKE_ENV +=     messages=yes

.ifdef DEBUG
CONFIGURE_ARGS +=       --enable-debug --disable-strip
MAKE_ENV +=     debug=yes strip=no
.else
CONFIGURE_ARGS +=       --disable-debug --enable-strip
MAKE_ENV +=     debug=no strip=yes
.endif

pre-build:
	mkdir -p ${WRKSRC}/config/mips64el/generic
	cp ${WRKSRC}/config/mips/irix6/tconfig.h \
		${WRKSRC}/config/mips64el/generic

.include <bsd.port.mk>
