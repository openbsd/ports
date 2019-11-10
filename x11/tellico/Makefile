# $OpenBSD: Makefile,v 1.54 2019/11/10 15:02:21 rsadowski Exp $

COMMENT =	organizer for book/dvd/music collections

DISTNAME =	tellico-3.2.2

CATEGORIES =	x11

HOMEPAGE =	http://tellico-project.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5Bookmarks
WANTLIB += KF5Cddb KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5FileMetaData
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Parts KF5Sane KF5Service KF5Solid KF5SonnetCore
WANTLIB += KF5SonnetUi KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml c cdio exempi exslt
WANTLIB += iconv iso9660 m poppler poppler-qt5 tag xml2 xslt yaz

MASTER_SITES =	http://tellico-project.org/files/
EXTRACT_SUFX =	.tar.xz

MODULES +=	devel/kf5 \
		lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/libcdio \
		audio/taglib \
		devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kfilemetadata \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		net/yaz \
		print/poppler,-qt5 \
		textproc/exempi \
		textproc/libxml \
		textproc/libxslt \
		x11/kde-applications/libkcddb \
		x11/kde-applications/libksane

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/tellico/data-sources/

.include <bsd.port.mk>
