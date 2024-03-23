COMMENT =		Qt API to store passwords and other secret data

GH_ACCOUNT =		frankosterfeld
GH_PROJECT =		qtkeychain
GH_TAGNAME =		0.14.2

SHARED_LIBS +=		qt5keychain	2.1
SHARED_LIBS +=		qt6keychain	0.0

CATEGORIES =		security

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m secret-1
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake

LIB_DEPENDS += 		x11/gnome/libsecret

CONFIGURE_ARGS += 	-DECM_MKSPECS_INSTALL_DIR="${PREFIX}/lib/${QT}/mkspecs/modules"

SUBST_VARS += 		LIBNAME LIBNAME_L QT

FLAVORS =		qt6
FLAVOR ?=

.if ${FLAVOR:Mqt6}
CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON
FULLPKGNAME =		qtkeychain-qt6-${GH_TAGNAME}
MODULES +=		lang/clang x11/qt6
MODCLANG_LANGS +=	c++
WANTLIB +=		Qt6Core Qt6DBus
LIB_DEPENDS +=		${MODCLANG_LIB_DEPENDS}
LIBNAME =		Qt6Keychain
QT =			qt6
.else
MODULES +=		x11/qt5
WANTLIB +=		Qt5Core Qt5DBus
LIBNAME =		Qt5Keychain
QT =			qt5
.endif

LIBNAME_L =		${LIBNAME:L}

NO_TEST =		Yes

.include <bsd.port.mk>
