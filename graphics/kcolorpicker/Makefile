COMMENT =	qt-based color picker with popup menu

V =		0.3.1
PKGNAME =	kcolorpicker-${V}

GH_ACCOUNT =	ksnip
GH_PROJECT =	kColorPicker
GH_TAGNAME =	v${V}

SHARED_LIBS +=  kColorPicker              2.0 # 0.0

CATEGORIES =	graphics

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m

MODULES =		devel/cmake \
			x11/qt6

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_WITH_QT6=ON

.include <bsd.port.mk>
