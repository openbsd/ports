# $OpenBSD: Makefile,v 1.4 2019/03/24 11:56:58 rsadowski Exp $

COMMENT =	pronunciation trainer
DISTNAME =	artikulate-${VERSION}
CATEGORIES =	education
REVISION =	0


SHARED_LIBS +=  artikulatecore            0.0 # 0.0
SHARED_LIBS +=  artikulatelearnerprofile  0.0 # 0.0
SHARED_LIBS +=  artikulatesound           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5NewStuff KF5NewStuffCore KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml Qt5XmlPatterns c m

MODULES +=	x11/kde-applications \
		lang/python

MODPY_RUNDEP =	No

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS +=x11/qt5/qtquickcontrols
RUN_DEPENDS +=	x11/qt5/qtquickcontrols

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtmultimedia

SUBST_VARS =	LIBartikulatecore_VERSION \
		LIBartikulatelearnerprofile_VERSION \
		LIBartikulatesound_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/CMakeLists.txt \
		${WRKSRC}/libsound/src/CMakeLists.txt \
		${WRKSRC}/liblearnerprofile/src/CMakeLists.txt

.include <bsd.port.mk>
