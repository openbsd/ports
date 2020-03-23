# $OpenBSD: Makefile,v 1.17 2020/03/23 18:01:10 rsadowski Exp $

COMMENT =		fully featured text editor component
DISTNAME =		ktexteditor-${VERSION}

SHARED_LIBS =		KF5TextEditor		6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Parts KF5Service KF5SonnetCore
WANTLIB += KF5SonnetUi KF5SyntaxHighlighting KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Widgets Qt5Xml c git2 m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtscript \
		x11/qt5/qtxmlpatterns

RUN_DEPENDS =	x11/qt5/qtscript \
		x11/qt5/qtxmlpatterns

# The following OPTIONAL packages have not been found:
# * EditorConfi
LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kguiaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/kparts>=${MODKF5_VERSION} \
		devel/kf5/ktextwidgets>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		devel/kf5/sonnet>=${MODKF5_VERSION} \
		devel/kf5/syntax-highlighting>=${MODKF5_VERSION} \
		devel/libgit2/libgit2

#The following tests FAILED:
# 21 - kateindenttest_testPython (Failed)
# 22 - kateindenttest_testCstyle (Failed)
# 23 - kateindenttest_testCppstyle (Failed)
# 24 - kateindenttest_testCMake (Failed)
# 25 - kateindenttest_testRuby (Failed)
# 26 - kateindenttest_testHaskell (Failed)
# 27 - kateindenttest_testLatex (Failed)
# 28 - kateindenttest_testPascal (Failed)
# 29 - kateindenttest_testAda (Failed)
# 30 - kateindenttest_testXml (Failed)
# 31 - kateindenttest_testNormal (Failed)
# 32 - kateindenttest_testReplicode (Failed)
# 45 - bug313769 (Failed)
# 46 - katedocument_test (Failed)
# 48 - kateview_test (Failed)
# 53 - katefoldingtest (Failed)
# 57 - commands_test (Failed)
# 58 - scripting_test (Failed)
# 59 - bug313759 (Failed)
# 60 - bug317111 (Failed)
# 61 - bug205447 (Failed)
# 66 - vimode_emulatedcommandbar (Failed)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
