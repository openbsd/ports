# $OpenBSD: Makefile,v 1.3 2018/05/21 10:53:43 rsadowski Exp $

#Qt5Webkit
USE_WXNEEDED =		Yes

COMMENT =	visual database applications creator

VERSION =	3.1.0
DISTNAME =	kexi-${VERSION}

SHARED_LIBS +=  kexicore3.1               0.0 # 3.1
SHARED_LIBS +=  kexidatatable3.1          0.0 # 3.1
SHARED_LIBS +=  kexidataviewcommon3.1     0.0 # 3.1
SHARED_LIBS +=  kexiextendedwidgets3.1    0.0 # 3.1
SHARED_LIBS +=  kexiformutils3.1          0.0 # 3.1
SHARED_LIBS +=  kexiguiutils3.1           0.0 # 3.1
SHARED_LIBS +=  keximain3.1               0.0 # 3.1
SHARED_LIBS +=  keximigrate3.1            0.0 # 3.1
SHARED_LIBS +=  kexirelationsview3.1      0.0 # 3.1
SHARED_LIBS +=  kexiundo3.1               0.0 # 3.1
SHARED_LIBS +=  kexiutils3.1              0.0 # 3.1
SHARED_LIBS +=  kformdesigner3.1          0.0 # 3.1

CATEGORIES =	databases

HOMEPAGE =	http://www.kexi-project.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KDb3 KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += KPropertyCore3 KPropertyWidgets3 KReport3 Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Test Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5Xml c glib-2.0 iconv
WANTLIB += m mysqlclient

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kexi/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			lang/python \
			devel/kf5

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/karchive \
			devel/kf5/breeze-icons \
			databases/postgresql,-server \
			x11/qt5/qtwebkit

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kservice \
			devel/kf5/breeze-icons \
			x11/qt5/qtwebkit

LIB_DEPENDS =		devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kitemviews \
			devel/kf5/kio \
			devel/kf5/ktexteditor \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kreport \
			devel/kproperty \
			databases/kdb \

CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes \
			-DKEXI_QTGUI_RUNTIME_AVAILABLE:Bool=Yes \
			-DKEXI_ENABLE_QTGUI_FOR_TESTS:Bool=No

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
