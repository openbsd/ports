# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:29 sthen Exp $

COMMENT =	IRC client for KDE

V =		1.7.4
DISTNAME =	konversation-$V
REVISION =	3

MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>

CATEGORIES =	net

HOMEPAGE =	https://konversation.kde.org/

MASTER_SITES =	${MASTER_SITE_KDE:=stable/konversation/$V/src/}

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5Emoticons KF5GlobalAccel KF5I18n KF5IconThemes KF5IdleTime
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5NotifyConfig KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml c m qca-qt5

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		devel/kf5 \
			multimedia/phonon \
			lang/python

BUILD_DEPENDS +=	devel/kf5/kdoctools \
			devel/kf5/kitemmodels \
			devel/gettext,-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/gettext,-runtime \
			x11/gtk+3,-guic

LIB_DEPENDS +=		security/qca-qt5 \
			devel/kf5/karchive  \
			devel/kf5/kbookmarks \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kemoticons \
			devel/kf5/ki18n  \
			devel/kf5/kidletime \
			devel/kf5/knotifyconfig \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/solid \
			devel/kf5/kwallet \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kglobalaccel \
			devel/kf5/kdbusaddons \
			devel/kf5/knotifications  \
			devel/kf5/kwindowsystem \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/konversation/scripting_support/python/konversation

.include <bsd.port.mk>
