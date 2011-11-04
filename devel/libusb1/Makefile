# $OpenBSD: Makefile,v 1.3 2011/11/04 12:17:50 jasper Exp $

COMMENT =		library for USB device access from userspace

VERSION =		1.0.8
DISTNAME =		libusb-${VERSION}
PKGNAME =		libusb1-${VERSION}
REVISION =		0
SHARED_LIBS +=  	usb-1.0                   0.0 # 0.0

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

# XXX Depends on libtool macros
BUILD_DEPENDS =		devel/libtool

USE_LIBTOOL =		Yes
AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
CONFIGURE_STYLE =	automake autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-log \
			--enable-debug-log \
			--enable-examples-build
.endif

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-extract:
	cp ${FILESDIR}/openbsd_ugen.c ${WRKSRC}/libusb/os/

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
