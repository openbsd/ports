COMMENT =	Qt5 library for writing cross-platform Matrix clients

GH_ACCOUNT =	quotient-im
GH_PROJECT =	libQuotient
GH_TAGNAME =	0.6.6

SHARED_LIBS +=  Quotient                  0.0 # 0.6

CATEGORIES =	x11 devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += QtOlm m

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	x11/qt5/qtmultimedia \
		x11/libqtolm

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DQuotient_ENABLE_E2EE=ON \
			-DQuotient_INSTALL_TESTS=OFF

.include <bsd.port.mk>
