COMMENT =	qt-based color picker with popup menu

V =		0.1.5
PKGNAME =	kcolorpicker-${V}

GH_ACCOUNT =	ksnip
GH_PROJECT =	kColorPicker
GH_TAGNAME =	v${V}

SHARED_LIBS =	kColorPicker	0.0	# 0.1.5

CATEGORIES =	graphics

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

MODULES =		devel/cmake \
			x11/qt5

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
