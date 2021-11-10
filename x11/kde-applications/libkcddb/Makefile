# $OpenBSD: Makefile,v 1.10 2021/11/10 06:37:55 rsadowski Exp $

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${VERSION}
PKGNAME =	libkcddb-kf5-${VERSION}
CATEGORIES =	devel multimedia

SHARED_LIBS +=  KF5Cddb                   2.0 # 5.0
SHARED_LIBS +=  KF5CddbWidgets            2.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml X11 m musicbrainz5

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	audio/libmusicbrainz5 \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
