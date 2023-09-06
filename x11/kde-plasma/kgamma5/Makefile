COMMENT =	KDE monitor calibration tool
DISTNAME =	kgamma5-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml SM X11 Xext Xxf86vm m

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
