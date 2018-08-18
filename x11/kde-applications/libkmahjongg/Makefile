# $OpenBSD: Makefile,v 1.1.1.1 2018/08/18 18:27:05 rsadowski Exp $

COMMENT =	common sets for games using Mahjongg tiles
DISTNAME =	libkmahjongg-${VERSION}
CATEGORIES =	devel games

SHARED_LIBS +=  KF5KMahjongglib           0.0 # 5.0

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5WidgetsAddons Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg

.include <bsd.port.mk>
