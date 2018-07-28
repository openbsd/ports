# $OpenBSD: Makefile,v 1.1.1.1 2018/07/28 18:52:19 rsadowski Exp $

COMMENT =	collection of plugins to handle mobipocket files
DISTNAME =	kdegraphics-mobipocket-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

SHARED_LIBS +=  qmobipocket               0.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += m

LIB_DEPENDS =	devel/kf5/kio

NO_TEST =	Yes

.include <bsd.port.mk>
