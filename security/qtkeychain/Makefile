# $OpenBSD: Makefile,v 1.7 2017/04/10 11:46:33 sthen Exp $

COMMENT =		Qt API to store passwords and other secret data

GH_ACCOUNT =		frankosterfeld
GH_PROJECT =		qtkeychain
GH_TAGNAME =		v0.7.0

SHARED_LIBS +=		qtkeychain	1.0 # 0.4
SHARED_LIBS +=		qt5keychain	1.0 # 0.4

CATEGORIES =		security

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

MODULES =		devel/cmake

FLAVORS = 		qt5
FLAVOR ?=

.if ${FLAVOR:Mqt5}
FULLPKGNAME = 		qtkeychain-qt5-${GH_TAGNAME:S/v//}
MODULES +=		x11/qt5
WANTLIB += 		Qt5Core Qt5DBus
LIBNAME = 		Qt5Keychain
LIBNAME_L = 		qt5keychain
QT = 			qt5
CONFIGURE_ARGS += 	-DBUILD_WITH_QT4=OFF
.else
MODULES += 		x11/qt4
WANTLIB += 		QtDBus ${LIBCXX}
CONFIGURE_ARGS += 	-DBUILD_WITH_QT4=ON
LIBNAME = 		QtKeychain
LIBNAME_L = 		qtkeychain
QT = 			qt4
.endif

SUBST_VARS += 		LIBNAME LIBNAME_L QT

NO_TEST =		Yes

.include <bsd.port.mk>
