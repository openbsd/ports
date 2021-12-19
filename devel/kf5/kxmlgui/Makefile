# $OpenBSD: Makefile,v 1.23 2021/12/19 10:51:03 rsadowski Exp $

COMMENT =		KDE framework for managing menu and toolbar actions
DISTNAME =		kxmlgui-${VERSION}

SHARED_LIBS =		KF5XmlGui		6.5

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GlobalAccel
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m


BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/ktextwidgets>=${MODKF5_VERSION}

TEST_DEPENDS =	devel/kf5/ktextwidgets>=${MODKF5_VERSION}

LIB_DEPENDS =	devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kglobalaccel>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kitemviews>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

# TODO: The following tests FAILED:
# 5 - kxmlgui_unittest (Failed)

.include <bsd.port.mk>
