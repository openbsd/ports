# $OpenBSD: Makefile,v 1.14 2020/02/07 07:13:40 rsadowski Exp $

COMMENT =		Qt API to store passwords and other secret data

GH_ACCOUNT =		frankosterfeld
GH_PROJECT =		qtkeychain
GH_TAGNAME =		v0.7.0
REVISION =		4

SHARED_LIBS +=		qt5keychain	1.0 # 0.4

CATEGORIES =		security

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus m

MODULES =		devel/cmake \
			x11/qt5

LIBNAME = 		Qt5Keychain
LIBNAME_L = 		qt5keychain
QT = 			qt5

CONFIGURE_ARGS += 	-DBUILD_WITH_QT4=OFF

SUBST_VARS += 		LIBNAME LIBNAME_L QT

NO_TEST =		Yes

.include <bsd.port.mk>
