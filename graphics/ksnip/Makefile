COMMENT =	screenshot tool with annotations features

GH_ACCOUNT =	ksnip
GH_PROJECT =	ksnip
GH_TAGNAME =	v1.10.0
REVISION =	0

CATEGORIES =	graphics

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += X11 c kColorPicker kImageAnnotator m xcb xcb-render
WANTLIB += xcb-shape xcb-xfixes

EXTRACT_SUFX =		.tar.gz

MODULES =		devel/kf5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		graphics/kcolorpicker>=0.2.0 \
			graphics/kimageannotator>=0.6.0 \
			x11/qt5/qtx11extras

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

.include <bsd.port.mk>
