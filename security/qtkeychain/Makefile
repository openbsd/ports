COMMENT =		Qt API to store passwords and other secret data

GH_ACCOUNT =		frankosterfeld
GH_PROJECT =		qtkeychain
GH_TAGNAME =		0.14.1

SHARED_LIBS +=		qt5keychain	2.1 # 0.4

CATEGORIES =		security

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += Qt5Core Qt5DBus gio-2.0 glib-2.0 gobject-2.0 intl m secret-1
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake \
			x11/qt5
LIB_DEPENDS += 		x11/gnome/libsecret

CONFIGURE_ARGS += 	-DECM_MKSPECS_INSTALL_DIR="${PREFIX}/lib/${QT}/mkspecs/modules"

LIBNAME = 		Qt5Keychain
LIBNAME_L = 		qt5keychain
QT = 			qt5

SUBST_VARS += 		LIBNAME LIBNAME_L QT

NO_TEST =		Yes

.include <bsd.port.mk>
