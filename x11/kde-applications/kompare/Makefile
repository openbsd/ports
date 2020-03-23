# $OpenBSD: Makefile,v 1.4 2020/03/23 18:01:23 rsadowski Exp $

COMMENT =	file compare utility for KDE
DISTNAME =	kompare-${VERSION}
CATEGORIES =	textproc devel

SHARED_LIBS +=  komparedialogpages  1.0 # 0.0
SHARED_LIBS +=  kompareinterface    1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Parts KF5Service KF5SonnetUi KF5TextEditor KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += c komparediff2 m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts  \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/libkomparediff2

SUBST_VARS +=	LIBkompareinterface_VERSION \
		LIBkomparedialogpages_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interfaces/CMakeLists.txt \
		${WRKSRC}/libdialogpages/CMakeLists.txt

.include <bsd.port.mk>
