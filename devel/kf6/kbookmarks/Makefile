COMMENT =		XBEL bookmarks format support for KDE
DISTNAME =		kbookmarks-${VERSION}

SHARED_LIBS +=  KF6Bookmarks              0.0 # 0.0
SHARED_LIBS +=  KF6BookmarksWidgets       0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6WidgetsAddons
WANTLIB += Qt6Core Qt6Gui Qt6Widgets Qt6Xml m

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/kf6/kconfig>=${MODKF6_VERSION} \
			devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
			devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
			devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
			devel/kf6/kwidgetsaddons>=${MODKF6_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
