# $OpenBSD: Makefile,v 1.6 2020/06/03 05:13:44 rsadowski Exp $

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${VERSION}
PKGNAME =	libkcddb-kf5-${VERSION}
CATEGORIES =	devel multimedia
REVISION =	0

SHARED_LIBS +=  KF5Cddb                   1.0 # 5.0
SHARED_LIBS +=  KF5CddbWidgets            1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml m musicbrainz5

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

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
		devel/kf5/kwidgetsaddons


.include <bsd.port.mk>
