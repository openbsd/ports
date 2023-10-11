COMMENT =	Qt5 library for writing cross-platform Matrix clients

GH_ACCOUNT =	quotient-im
GH_PROJECT =	libQuotient
GH_TAGNAME =	0.8.1.2

SHARED_LIBS +=  Quotient                  2.0 # 0.8

CATEGORIES =	x11 devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Sql crypto m olm qt5keychain

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	devel/olm \
		security/qtkeychain \
		x11/qt5/qtmultimedia

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DQuotient_ENABLE_E2EE=ON \
			-DQuotient_INSTALL_TESTS=OFF

# XXX C++20 vs. libstd++ in quotest.cpp
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

# XXX unpackaged quotest is still built when disabling tests
ALL_TARGET =		Quotient

.include <bsd.port.mk>
