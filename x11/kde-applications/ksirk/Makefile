# $OpenBSD: Makefile,v 1.5 2019/03/24 11:57:02 rsadowski Exp $

COMMENT =	world domination strategy game
DISTNAME =	ksirk-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/ksirk


SHARED_LIBS +=  iris_ksirk                0.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5KDEGames KF5KDEGamesPrivate
WANTLIB += KF5KIOCore KF5NewStuff KF5NewStuffCore KF5Service KF5Wallet
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml c m qca-qt5 z

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS +=x11/qt5/qtquickcontrols
RUN_DEPENDS +=	x11/qt5/qtquickcontrols

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/qca-qt5 \
		x11/kde-applications/libkdegames \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

.include <bsd.port.mk>
