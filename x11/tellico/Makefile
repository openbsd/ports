USE_WXNEEDED =	Yes

COMMENT =	organizer for book/dvd/music collections

DISTNAME =	tellico-4.0

CATEGORIES =	x11

HOMEPAGE =	https://tellico-project.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KCddb6 KF6Archive KF6Attica KF6Bookmarks
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6FileMetaData KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6NewStuffCore KF6NewStuffWidgets KF6Service KF6Solid
WANTLIB += KF6SonnetCore KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Charts Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml c cdio exempi
WANTLIB += exslt iconv iso9660 m poppler-qt6 tag xml2 xslt yaz

SITES =		http://tellico-project.org/files/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf6 \
		lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf6/kdoctools \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/libcdio \
		audio/taglib \
		converters/libiconv \
		devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kfilemetadata \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		net/yaz \
		print/poppler,-qt6 \
		textproc/exempi \
		textproc/libxml \
		textproc/libxslt \
		x11/kde-applications/kf6-libkcddb \
		x11/qt6/qtcharts \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \

TEST_IS_INTERACTIVE =	X11

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/tellico/data-sources/

.include <bsd.port.mk>
