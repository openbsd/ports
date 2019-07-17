# $OpenBSD: Makefile,v 1.3 2019/07/17 14:49:20 danj Exp $

COMMENT =		Android Debug Bridge

V =			5.1.1_r4
DISTNAME =		adb-${V}
PKGNAME =		${DISTNAME:S/_r/./}
REVISION =		0

GH_ACCOUNT =		android
GH_PROJECT =		platform_system_core
GH_TAGNAME =		android-${V}

CATEGORIES =		devel

HOMEPAGE =		https://developer.android.com/tools/help/adb.html
# Apache License v2.0
PERMIT_PACKAGE =	Yes

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
