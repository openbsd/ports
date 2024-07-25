COMMENT =	KTorrent engine

DISTNAME =	libktorrent-${MODKDE_GEAR_VERSION}

CATEGORIES =	net

SHARED_LIBS +=	KTorrent6                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Completion KF6ConfigCore
WANTLIB += KF6CoreAddons KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += Qt6Xml gcrypt gmp m

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MODULES =	x11/kde

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf6/kauth \
		devel/kf6/kbookmarks\
		devel/kf6/kcodecs \
		devel/kf6/kcrash

RUN_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kbookmarks\
		devel/kf6/kcodecs \
		devel/kf6/kcrash

LIB_DEPENDS =	devel/gmp \
		devel/kf6/karchive \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets\
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		security/libgcrypt \
		x11/qt6/qt5compat

# Qt6PdfQuickplugin
BUILD_DEPENDS +=	x11/qt6/qtwebengine
RUN_DEPENDS +=		x11/qt6/qtwebengine

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
