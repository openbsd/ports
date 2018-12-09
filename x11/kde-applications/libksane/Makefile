# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 10:21:30 rsadowski Exp $

COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${VERSION}
PKGNAME =	libksane-kf5-${VERSION}
CATEGORIES =	graphics devel

KDE5 =		Yes

SHARED_LIBS +=  KF5Sane                   0.0 # 5.1

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets
WANTLIB += m sane

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/sonnet \
		graphics/sane-backends

.include <bsd.port.mk>
