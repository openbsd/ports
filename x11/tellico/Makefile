# $OpenBSD: Makefile,v 1.40 2018/06/27 21:04:22 espie Exp $

COMMENT =	organizer for book/dvd/music collections

DISTNAME =	tellico-3.1.2
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	http://tellico-project.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5FileMetaData
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JS KF5JobWidgets KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetCore KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml c cdio exempi exslt iconv iso9660 m poppler
WANTLIB += poppler-qt5 tag xml2 xslt yaz

MASTER_SITES =		http://tellico-project.org/files/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf5 \
			lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/taglib \
		audio/libcdio \
		devel/kf5/attica \
		devel/kf5/karchive \
		devel/kf5/kfilemetadata \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kguiaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/ki18n \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/solid \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/knewstuff \
		devel/kf5/kxmlgui \
		devel/kf5/khtml \
		print/poppler,,-qt5 \
		net/yaz \
		textproc/libxml \
		textproc/exempi \
		textproc/libxslt

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/tellico/data-sources/

.include <bsd.port.mk>
