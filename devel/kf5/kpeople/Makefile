# $OpenBSD: Makefile,v 1.8 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		KDE framework for aggregating and accessing people contacts
DISTNAME =		kpeople-${VERSION}

SHARED_LIBS =   	KF5People		4.1 # 5.17
SHARED_LIBS +=  	KF5PeopleBackend	4.1 # 5.17
SHARED_LIBS +=  	KF5PeopleWidgets	4.1 # 5.17

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5ItemViews KF5Service KF5WidgetsAddons Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Sql Qt5Widgets m

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kitemviews \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
