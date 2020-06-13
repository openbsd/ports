# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:30:07 rsadowski Exp $

COMMENT =	KDE PIM blogging library
DISTNAME =	kblog-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5Blog       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Service KF5Syndication KF5XmlRpcClient
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Network m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kxmlrpcclient \
		devel/kf5/syndication \
		devel/kf5/kservice

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
