# $OpenBSD: Makefile,v 1.1.1.1 2015/05/28 09:42:37 ajacoutot Exp $

COMMENT =		Android Debug Bridge

V =			5.1.1_r4
DISTNAME =		adb-${V}
PKGNAME =		${DISTNAME:S/_r/./}

GH_ACCOUNT =		android
GH_PROJECT =		platform_system_core
GH_TAGNAME =		android-${V}

CATEGORIES =		devel

HOMEPAGE =		https://developer.android.com/tools/help/adb.html
MAINTAINER = 		Andrew Aldridge <i80and@foxquill.com>

# Apache License v2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto pthread usb-1.0 z
LIB_DEPENDS =		devel/libusb1

NO_TEST =		Yes
USE_GMAKE =		Yes
WRKBUILD =		$(WRKSRC)/adb

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/adb ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/adb
	${INSTALL_DATA} ${WRKBUILD}/NOTICE ${PREFIX}/share/doc/adb/NOTICE

.include <bsd.port.mk>
