# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:19 rsadowski Exp $

COMMENT =	collection of plugins to handle mobipocket files
DISTNAME =	kdegraphics-mobipocket-${VERSION}
CATEGORIES =	devel


SHARED_LIBS +=  qmobipocket               0.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += m

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

NO_TEST =	Yes

.include <bsd.port.mk>
