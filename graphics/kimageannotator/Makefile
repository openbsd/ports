COMMENT =	tool for annotating images

V =		0.7.1
PKGNAME =	kimageannotator-${V}

GH_ACCOUNT =	ksnip
GH_PROJECT =	kImageAnnotator
GH_TAGNAME =	v${V}

SHARED_LIBS +=	kImageAnnotator           3.0 # 0.0

CATEGORIES =	graphics

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Svg Qt6Widgets
WANTLIB += X11 kColorPicker m

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		graphics/kcolorpicker>=0.3 \
			x11/qt6/qtsvg

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_WITH_QT6=ON

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
