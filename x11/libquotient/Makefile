COMMENT =	Qt6 library for writing cross-platform Matrix clients

GH_ACCOUNT =	quotient-im
GH_PROJECT =	libQuotient
GH_TAGNAME =	0.8.1.2
REVISION =	1

SHARED_LIBS +=  QuotientQt6               0.0 # 0.0

CATEGORIES =	x11 devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Sql crypto m olm qt6keychain

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	devel/olm \
		security/qtkeychain,,qt6 \
		x11/qt6/qtmultimedia

CONFIGURE_ARGS =	-DBUILD_WITH_QT6=ON \
			-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DQuotient_ENABLE_E2EE=ON \
			-DQuotient_INSTALL_TESTS=OFF \
			-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON

# XXX C++20 vs. libstd++ in quotest.cpp
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

# XXX unpackaged quotest is still built when disabling tests
ALL_TARGET =		QuotientQt6

.include <bsd.port.mk>
