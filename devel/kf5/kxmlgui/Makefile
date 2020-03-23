# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:11 rsadowski Exp $

COMMENT =		KDE framework for managing menu and toolbar actions
DISTNAME =		kxmlgui-${VERSION}

SHARED_LIBS =		KF5XmlGui		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5IconThemes KF5ItemViews KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/attica>=${MODKF5_VERSION} \
		devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kglobalaccel>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kitemviews>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

# TODO: The following tests FAILED:
# 5 - kxmlgui_unittest (Failed)

.include <bsd.port.mk>
