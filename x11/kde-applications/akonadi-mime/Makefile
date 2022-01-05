# $OpenBSD: Makefile,v 1.7 2022/01/05 08:02:51 rsadowski Exp $

COMMENT =	PIM Akonadi mime support library
DISTNAME =	akonadi-mime-${VERSION}
CATEGORIES =	devel productivity

SHARED_LIBS +=  KF5AkonadiMime            2.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiPrivate
WANTLIB += KF5AkonadiWidgets KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5ItemModels KF5KIOCore KF5Mime KF5Service KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Test Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info \
		textproc/libxslt \

RUN_DEPENDS =	misc/shared-mime-info \
		textproc/libxslt \

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/akonadi \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
