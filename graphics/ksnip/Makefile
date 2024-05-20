BROKEN =	Qt6 version still broken, waiting for upstream
COMMENT =	screenshot tool with annotations features

PKGNAME = ksnip-1.11.0
# XXX still broken
DIST_TUPLE =	github ksnip ksnip 75d022d669cee86a6fea1ab3c9ceb050ab14bd27 .

CATEGORIES =	graphics

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += X11 c kColorPicker kImageAnnotator m xcb xcb-render
WANTLIB += xcb-shape xcb-xfixes

EXTRACT_SUFX =		.tar.gz

MODULES =		devel/cmake x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		graphics/kcolorpicker>=0.3 \
			graphics/kimageannotator>=0.7 \

CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

.include <bsd.port.mk>
